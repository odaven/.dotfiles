# raspberry-pi-setup
Raspberry Pi first initial setup

### Manual installation
1. Use [raspi-config](https://www.raspberrypi.com/documentation/computers/configuration.html) for:
   - Wifi
   - Hostname
   - Activate ssh server
   

2. (Optional) Delete default user and create your own 
   - Create your new user `adduser newuser`
   - Admin privileges to new user `usermod -aG sudo newuser`
   - Log in the new user
   - Delete default user pi `sudo deluser --remove-home pi`


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
