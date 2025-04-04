#!/usr/bin/bash

echo -e "--------LaunchScriptGen--------\n"
read -p "Enter path to executable: " executable
read -p "Application name: " appname
read -p "Enter launch script name: " name

if [ -x "$executable" ]; then
   echo "Creating executable launch script......."
   cat <<EOF > "$name"
#!/usr/bin/env bash
echo "Launching $appname........"
exec "$executable"
EOF
   chmod +x "$name"
   echo "Done :)"
else
   echo "Executable not found"
fi
