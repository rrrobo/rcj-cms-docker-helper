# RoboCup Junior
### Helper file for rescue scoring system environment construction
This is a helper file used to build the RCJ CMS with a Docker image.

## Supported environment
Windows 10 Pro / Enterprise / Education / Home  
Ubuntu 20.04LTS
macOS 11.0

## Tested environment(Windows)
OS : Windows 10 Education 20H2  
CPU : AMD Ryzen9 3900X  
RAM : 32GB

## Tested environment(Linux)
* Ubuntu 16.04 LTS
* Ubuntu 18.04 LTS
* Synology DiskStation DSM 6.2 (Official Docker Package Installed)
* QNAP QTS4.5.4
* macOS 10.14 Mojave

## Setup
** Please make sure Docker and DockerCompose are installed and ready to use.**

1. Download this project from below link.  
[DOWNLOAD](https://github.com/rrrobo/rcj-cms-docker-helper/archive/refs/heads/master.zip)
2. Please unzip completely!!  
3. Edit conf/rcj-cms/process.env appropriately.
4. Open "windows-launcher" or "linux-launcher", depending on your OS.
5. Run "setup" to start the setup.

It takes up to few minutes for the system to start up.
When you access [http://localhost:3000](http://localhost:3000) after startup process is completed, the home page of the system appears.  
The scoring system does not support Microsoft Internet Explorer and Edge browser. We recommend Google Chrome and Firefox.

**Note**  
If security protection software is installed, the system may not start properly. (If you are using "Norton", there is a report that does not start well.)
In this case, you need to change the settings of the security software. For details, please search with "(Security protection software name) + Docker" etc.

### STEP4: Usage

#### Start-up

For the second and subsequent start ups after setting up the system, run "start".

#### Stop

To stop the system, run "stop".

#### Reboot

To restart the system, run "restart".

#### Update to latest version of system

To update, run "update".

## Change password of admin account
If you want to change the admin account password, edit the file `process.env` in the setup helper directory (rcj-scoring-docker) with a suitable editor.

```
# db vars see more at http://mongoosejs.com/docs/connections.html
DB_CONNECT_STR=mongodb://localhost/rcj-scoring

# web vars
WEB_HOSTPORT=3000

# log vars ERROR/INFO/DEBUG
MAIN_LOG_LVL=DEBUG

# Account hardcoded
user=admin
password=admin

# Default Account Setting
dUsername=admin
dPassword=adminpass       #CHANGE HERE
dAdmin=true
dSDAdmin=true
```

The change is applied by running "restart".