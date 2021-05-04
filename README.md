# RoboCup Junior
### [Windows] Helper file for rescue scoring system environment construction
This is a helper file used to build the RCJ CMS with a Docker image.

## Supported environment
Windows 10 Pro / Enterprise / Education

**Windows10 Home is NOT suported!**


## Tested environment
OS : Windows 10 Education 20H2  
CPU : AMD Ryzen9 3900X  
RAM : 32GB

## Setup

### STEP1: Setup Docker
Access the following site and download the installer.  
[https://hub.docker.com/editions/community/docker-ce-desktop-windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)

![Docker for Windows](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/dc-win.jpeg)

Run the downloaded installer.
When the following screen is displayed, press "OK".  
![Install1](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/install1.png)

Installing  
![Install2](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/install2.png)

Press Close and log out.
Your computer will be logged out automatically. Please login again.  
![Install3](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/install3.png)

### STEP2: Launch and configure Docker for Windows

Double-click the following icon generated on the desktop to launch it.  
![Docker icon](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/dc-icon.png)

When the following message that Hyper-V is not activated is displayed, press OK to activate. After completion, the PC will restart automatically.  
![HyperV](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/hyperV.png)

After restarting, when the following window is displayed, Docker for Windows has started successfully.  
![Launch](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/launch.png)

Make settings.
Right-click the Docker icon on the taskbar, go to Settings and press Shard Drives.
![Share](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/setting.png)  
Check "Share" like the image and press Apply.

**Note**  
If no password is set for the Windows account, set a password for the account before setting this.

### STEP3: Setup the System
Download this project from below link.  
[DOWNLOAD](https://github.com/rrrobo/rcj-scoring-docker-helper-windows-international/archive/master.zip)

Please unzip completely!!  
![Folder](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/folder.png)

Duble-click "setup" to start the setup.

Installing...  
![Terminal](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/terminal.png)


When the screen disappears, setup is complete. The system will boot automatically.  
It takes up to a minute for the system to start up after the screen disappears.
When you access [http://localhost:3000](http://localhost:3000) after startup process is completed, the screen of the system appears.  
The scoring system does not support Microsoft Internet Explorer and Edge browser. We recommend Google Chrome and Firefox.

**Note**  
If security protection software is installed, the system may not start properly. (If you are using "Norton", there is a report that does not start well.)
In this case, you need to change the settings of the security software. For details, please search with "(Security protection software name) + Docker" etc.

### STEP4: Usage
![Folder](https://raw.githubusercontent.com/rrrobo/rcj-scoring-docker-helper-windows-international/images/folder.png)

#### Start-up

For the second and subsequent start ups after setting up the system, double-click start.

#### Stop

To stop the system, double-click stop.

#### Reboot

To restart the system, double-click restart.

#### Update to latest version of system

To update, double-click update.

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

The change is applied by executing by duble-click "restart".