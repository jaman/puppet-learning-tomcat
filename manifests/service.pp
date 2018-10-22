class tomcat::service inherits tomcat {

    service {$service_name: 
        ensure => $service_state,
        enable => true,
    }

}