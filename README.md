Create Virtual Box with Vagrant and Provision with Puppet.

This tutorial help you install & configure the Virtual box and Vagrant on windows machine and then create CentOs7 box using Vagrant and provision with Puppet.

1. Download & install Virtual box
https://download.virtualbox.org/virtualbox/5.2.14/VirtualBox-5.2.14-123301-Win.exe
2. Download & install Vagrant
https://releases.hashicorp.com/vagrant/2.1.2/vagrant_2.1.2_x86_64.msi
3. Install git for windows: This help us to run Linux command on windows
https://github.com/git-for-windows/git/releases/download/v2.18.0.windows.1/Git-2.18.0-64-bit.exe
4. Restart your system and check the vagrant version
   a) open your command prompt or PowerShell and run "vagrant --version"
   if you are unable to get version, then you will have to add vagrant installation location to path environmental variable.
   Computer->right click ->properties ->Advance system settings ->advance ->environmental variables -> path under system variable
   "C:\HashiCorp\Vagrant\bin"
5. Create any folder 
   mkdir E:\test
   cd E:\test
   git clone https://github.com/hussainaphroj/vagrant-puppet.git
6. you will be able to see two directories such as Docker and provision
7. go to Docker or provision
   cd E:\test\docker
   Right click on empty area -> Git Bash here
	ls
	puppet/  Vagrantfile
	vagrant up  ( this will take some time first time since it will download centos7 box file and create box)
	
8. on the successful run on 'vagrant up'. your box is ready and configured with Docker and apache.
you can see that box on virtual box.
 
 9. Run "vagrant ssh" to login that box.
 
 10. you can follow the same step to create apache box as well.

Cheers,
Happy Learnings
   
