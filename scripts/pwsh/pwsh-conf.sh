#!/bin/bash

update_pwsh_profile() {
    echo "Copying pwsh config"
    cp -a "$ENV_SETUP/config/pwsh/." "$PROFILE"
}

update_pwsh_profile
