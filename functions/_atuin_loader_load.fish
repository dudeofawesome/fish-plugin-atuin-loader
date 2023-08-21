function _atuin_loader_load \
    --description "Loads the Atuin fish plugin"

    set enable_logging $argv[1]
    if not set --query argv[1]
        set --function enable_logging true
    end

    if status is-interactive; and which atuin >/dev/null
        atuin init fish | source

        if "$enable_logging" != false
            echo "Loaded the Atuin fish plugin."
        end
    else
        if "$enable_logging" != false
            echo "Skipped loading the Atuin fish plugin."
        end
    end

end
