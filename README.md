# Intro of websphere_app_server Puppet Module

This module would install ibm_installation_manager and Websphere server

## Setup - In Puppet Server

### Step - 1: Download WAS.zip file into /tmp directory
### Step - 2: Gather ibm_installation_manager URL
### Step - 3: Make sure you have WAS repo package name. You can get using following command
### Step - 4: Install "ibm_installation_manager" Puppet Module in puppet server

```
$ puppet module install puppetlabs-ibm_installation_manager --version 3.0.1
```
### Step - 5: Install "websphere_app_server" Puppet Module in puppet server

### Step - 6: Add Following entry in site.pp to install ibm_installation_manager and websphere

```
class { 'ibm_installation_manager':
  deploy_source => true,
  source        => 'https://ak-delivery04-mul.dhe.ibm.com/sdfdl/v2/sar/CM/RA/0auf6/0/Xa.2/Xb.jusyLTSp44S03UdKEkwd2g9pjrrz6jCD3WB1tPgTaX6Zr9S1Jx0v0bI7zic/Xc.CM/RA/0auf6/0/agent.installer.linux.gtk.x86_64_1.9.2003.20220917_1018.zip/Xd./Xf.LPR.D1VC/Xg.12149157/Xi.habanero/XY.habanero/XZ.6fjor_Q0cQmQculUKx-MQy1yvaKXYBGB/agent.installer.linux.gtk.x86_64_1.9.2003.20220917_1018.zip',
}

include websphere_app_server
```

## Setup - In Puppet Agent
```
$ /opt/puppetlabs/bin/puppet agent -t
```

## site.pp

```
node default {

class { 'ibm_installation_manager':
  deploy_source => true,
  source        => 'https://ak-delivery04-mul.dhe.ibm.com/sdfdl/v2/sar/CM/RA/0auf6/0/Xa.2/Xb.jusyLTSp44S03UdKEkwd2g9pjrrz6jCD3WB1tPgTaX6Zr9S1Jx0v0bI7zic/Xc.CM/RA/0auf6/0/agent.installer.linux.gtk.x86_64_1.9.2003.20220917_1018.zip/Xd./Xf.LPR.D1VC/Xg.12149157/Xi.habanero/XY.habanero/XZ.6fjor_Q0cQmQculUKx-MQy1yvaKXYBGB/agent.installer.linux.gtk.x86_64_1.9.2003.20220917_1018.zip',
}

include websphere_app_server

}

node 'agent1' {



}

```
