### Load functions ###
functions --query \
    _atuin_loader_load

### Set variables on load ###
# whether or not atuin has been loaded
set --global _atuin_loader_load false
# arguments to pass to `atuin init fish`
set --global _atuin_loader_arguments ""
