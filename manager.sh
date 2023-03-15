cat << 'EOF'
    ___  _       __ __  ___ _____    __  __                           __               _                   __ __                    __               __  
   /   || |     / //  |/  // ___/   / / / /__  __ ____   ___   _____ / /____   ____ _ (_)_____            / //_/___   __  __ _____ / /____   ____ _ / /__
  / /| || | /| / // /|_/ / \__ \   / /_/ // / / // __ \ / _ \ / ___// // __ \ / __ `// // ___/  ______   / ,<  / _ \ / / / // ___// // __ \ / __ `// //_/
 / ___ || |/ |/ // /  / / ___/ /  / __  // /_/ // /_/ //  __// /   / // /_/ // /_/ // // /__   /_____/  / /| |/  __// /_/ // /__ / // /_/ // /_/ // ,<   
/_/  |_||__/|__//_/  /_/ /____/  /_/ /_/ \__, // .___/ \___//_/   /_/ \____/ \__, //_/ \___/           /_/ |_|\___/ \__, / \___//_/ \____/ \__,_//_/|_|  
                                        /____//_/                           /____/                                 /____/                                
EOF

cat << 'EOF' 

=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

Welcome to the AWMS Hyperlogic: Keycloak configuration service

This service will provide the tools for you to:
- Setup Keycloak for new installations
- Update existing configurations for Keycloak
- Rebuild Keycloak information

=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

EOF

setup_keycloak() {

}

menu() {
echo "
Select an option from below

1) Setup Keycloak

0) Exit
\n"

    read a
    case $a in 
        1) setup_keycloak ; menu ;;
        0) exit 0 ;;
        *) echo "Invalid command";
    esac
}

menu