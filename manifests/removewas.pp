class websphere_app_server::removewas (

  # Remove WebSphere Application Server
  exec { 'Remove WebSphere Application Server':
    command => '/opt/IBM/InstallationManager/eclipse/tools/imcl imcl uninstall com.ibm.websphere.NDTRIAL.v85_8.5.5000.20130514_1044',
    cwd     => '/opt/IBM/InstallationManager/eclipse/tools',
  }
  # Remove WebSphere Application Server
  exec { 'Remove WebSphere Application Server':
    command => 'rm -rf /opt/IBM/WebSphere/',
    cwd     => '/opt/IBM/InstallationManager/eclipse/tools',
  }
  
)
