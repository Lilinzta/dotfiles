function vrun
    set env_path $PYTHON_VENV_NAME/bin/activate.fish
    if test -f $env_path
        source $env_path
    end
end
