###########
# Config for nushell
# version 0.1 16.04.2025
##########

#External config parts
source ~/.config/nushell/aliases.nu
#------------------


# Starship config
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
#------------------
