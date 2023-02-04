# Module name: websphere_app_server

# Define the class for the module
class websphere_app_server {

  # Install WebSphere Application Server
  exec { 'Install WebSphere Application Server':
    command => '/opt/IBM/InstallationManager/eclipse/tools/imcl install com.ibm.websphere.NDTRIAL.v85_8.5.5000.20130514_1044 -repositories /tmp/WAS/repository.config -acceptLicense',
    cwd     => '/opt/IBM/InstallationManager/eclipse/tools',
  }
}

