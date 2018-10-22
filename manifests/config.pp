class tomcat::config inherits tomcat {
    file {$config_path:
        content  => template('tomcat/tomcat.conf.erb'),
        owner    => $user,
        group    => $group,
        mode     => '0644',
        notify   => Service[$service_name],
    }
}
