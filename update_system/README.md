# update system when you login


- modify %USER% with your username add the file to ~/.config/systemd/user/update_system.service
add the path if not exist using mkdir -p

- add the script to ~/.local/bin/system_login_update 
add the path if not exist using mkdir -p

- enable the service using systemctl
systemctl --user enable update_system.service

