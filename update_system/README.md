# update system when you login

- Allow your user to execute sudo without password 

- modify %USER% with your username add the file to "~/.config/systemd/user/update_system.service"
  
add the path if not exist using
```bash
mkdir -p ~/.config/systemd/user
```
- add the script to "~/.local/bin/system_login_update"
  
add the path if not exist using
```bash
mkdir -p ~/.local/bin
```
- enable the service using systemctl
```bash
systemctl --user enable update_system.service
```
```bash
systemctl --user daemon-reload
```
