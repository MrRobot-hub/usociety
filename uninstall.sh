!/bin/bash


clear

echo "

";

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then

    INSTALL_DIR="$PREFIX/usr/share/doc/usociety"

    BIN_DIR="$PREFIX/bin/"

    BASH_PATH="$PREFIX/bin/bash"

    TERMUX=true

    pkg uninstall -y git python3

elif [ "$(uname)" = "Darwin" ]; then

    INSTALL_DIR="/usr/local/usociety"

    BIN_DIR="/usr/local/bin/"

    BASH_PATH="/bin/bash"

    TERMUX=false

else

    INSTALL_DIR="$HOME/.usociety"

    BIN_DIR="/usr/local/bin/"

    BASH_PATH="/bin/bash"

    TERMUX=false

    sudo apt-get remove -y git python2.7

fi

echo "[✔] Checking directories...";

if [ -d "$INSTALL_DIR" ]; then

        rm -rf "$INSTALL_DIR"

        rm "$BIN_DIR/usociety*"

        sudo rm -rf "$INSTALL_DIR"

        sudo rm "$BIN_DIR/usociety*"

    else

        echo "[✘] If you want to uninstall you must remove previous installations [✘] ";

        echo "[✘] Failed! [✘] ";

fi

echo "[✔] Cleaning up old directories...";

if [ -d "$ETC_DIR/MrRobot-hub" ]; then

    echo "$DIR_FOUND_TEXT"

    if [ "$TERMUX" = true ]; then

        rm -rf "$ETC_DIR/MrRobot-hub"

    else

        sudo rm -rf "$ETC_DIR/MrRobot-hub"

    fi

fi

clear

clear

echo "[✔] all good!"
