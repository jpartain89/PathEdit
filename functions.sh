#!/bin/bash

add_to ()
	{
		. "$DIR/pathadd"
		echo ""
		echo "This is the updated PATH"
		echo "$PATH"
	}
read_path ()
	{
		echo ""
		echo "This is the current PATH"
		echo "$PATH"
	}
remove_from ()
	{
		echo ""
		echo "Please enter the section of PATH you want to remove: "
		read -r rmv_path
		PATH=$("/usr/local/sbin/remove_path_part" $rmv_path)
		echo ""
		echo "Updated Path: "
		echo "$PATH"
	}
usage ()
	{
		cat <<EOF

		Usage: check_path [commands]

		Commands:

			add		Add to the PATH
			remove		Remove from the PATH
			read		Read the PATH
			version		Show the version
			help		Show this help message

EOF
	}
