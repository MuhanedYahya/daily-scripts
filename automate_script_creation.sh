#!/bin/bash

# Get the name of the script from the user
read -p "Enter the name of the script: " script_name

# Launch vim to allow the user to write the script
vim "$script_name"

# Set the file path for the script in .local/bin/
script_path="$HOME/.local/bin/$script_name"

# Create the script file in .local/bin/
echo -e "#!/bin/bash\n\n$(cat "$script_name")" > "$script_path"
rm $script_name
# Set permissions for the script
chmod +x "$script_path"

echo "Script $script_name has been created and added to ~/.local/bin/ with appropriate permissions."
