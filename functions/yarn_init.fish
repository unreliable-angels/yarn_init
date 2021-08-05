function yarn_init -d 'Initialize yarn environment'
    if not type yarn >/dev/null 2>&1
        set -l filename (basename (status -f))
        echo $filename: (set_color red)yarn executable is not found.(set_color normal)
        return 1
    end

    set -l yarn_bin_path (yarn global bin)

    if not contains "$yarn_bin_path" $fish_user_paths
        set -g fish_user_paths "$yarn_bin_path" $fish_user_paths
    end
end
