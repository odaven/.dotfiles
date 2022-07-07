# Raspberry Pi setup

---

### Installation method 1: Raspberry Pi Imager
Download Raspberry Pi Imager that will create the image for you:

Url: https://www.raspberrypi.com/software/

You can:
- Choose the os you want
- Choose the storage
- In the bottom right gear you can add
  - Hostname
  - Enable ssh
  - Add the ssh key (See below for how to generate)
  - Username and password
  - Wireless configuration

By defualt auto-login is enabled, for disable it use [raspi-config](https://www.raspberrypi.com/documentation/computers/configuration.html) 
  
---
### Installation method 2: Manual
A. Use [raspi-config](https://www.raspberrypi.com/documentation/computers/configuration.html) for:
   - Wifi
   - Hostname
   - Activate ssh server
   

B. (Optional) Delete default user and create your own 
   - Create your new user `adduser newuser`
   - Admin privileges to new user `usermod -aG sudo newuser`
   - Log in the new user
   - Delete default user pi `sudo deluser --remove-home pi`
   
---

### Accessing with ssh keys
   - Generate a key with `ssh-keygen -t rsa -b 4096 -C "whateveryou-what"`
   - Send it to the raspberry with `ssh-copy-id -i your-key.pub your-pi-user@pi-host-name`
   - Add in your `.ssh/config` in the machine you connect from the configuration below.
   - Connect with `ssh your-pi-user@pi-host-name` or if you added the user in the config file `ssh pi-host-name`

   
```shell
   Host pi-host-name
   AddKeysToAgent yes
   UseKeychain yes
   IdentityFile ~/.ssh/your-key
   User your-pi-user
```
