class tomcat::params {

    $user = 'tomcat'
    $group = 'tomcat'
    $config_path = '/etc/tomcat/tomcat.conf'
    $packages = ['tomcat', 'tomcat-webapps']
    $service_name = 'tomcat'
    $service_state = running
    $shutdown_wait = 30
    $catalina_pid = '/var/run/tomcat.pid'
    $java_home = '/usr/lib/jvm/jre'
    $xms = '64m'
    $xmx = '128m'
    $maxpermsize = '128M'
    $catalina_base = '/usr/share/tomcat'
    $catalina_home = '/usr/share/tomcat'
    $jasper_home = '/usr/share/tomcat'
    $catalina_tmpdir = '/var/cache/tomcat/temp'
    $security_manager = 'false'
    $shutdown_verbose = 'false'
    $tomcat_cfg_loaded = '1'
    $deploy_path = '/var/lib/tomcat/webapps'
    


}