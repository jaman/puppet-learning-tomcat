define tomcat::deploy(
    $deploy_path = $::tomcat::deploy_path,
    $deploy_url,
    $checksum = 'md5',
    $checksum_value,

){

    file {"${deploy_path}/${name}.war" :
        source          => "${deploy_url}",
        owner           => $::tomcat::user,
        group           => $::tomcat::group,
        notify          => Exec['purge_context'],
        checksum        => "${checksum}",
        checksum_value  => "${checksum_value}",
        
    }
    
    exec {"purge_context":
        path         => ['/usr/bin', '/usr/local/bin', '/usr/sbin', '/bin'],
        command      => "rm -rf ${deploy_path}/${name}",
        refreshonly  => true,
        notify       => Service[$::tomcat::service_name],
    }

}