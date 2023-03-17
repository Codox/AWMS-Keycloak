#!/bin/bash

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

Please don't break anything :)

=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

EOF

keycloak_require_environment_variables=(
    # Admin credentials
    "KEYCLOAK_ADMIN_USER",
    "KEYCLOAK_ADMIN_PASSWORD"

    # Postgres credentials
)

while true
do
    echo "Select an option from below"
    echo "1) Configure Keycloak"
    echo "2) Wipe Keycloak"
    echo "0) Exit"

    read -p "Option > " selection

    case $selection in
        1)
            echo "1) Called"
        ;;

        2)
            echo "2) Called 2"
        ;;

        0)
            echo "Goodbye!"
            exit 0
        ;;

        *) 
            echo "Choice is invalid"
        ;;
    esac
done

configure_keycloak() {
    # Verify environment variables are set
    
}


