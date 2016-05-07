# dotfiles
My dotfiles. 
Not really going to be of help to anybody else (they're probably just bad), but if you happen to stumble upon this and become interested for whatever reason, feel free to make comments and stuff.

##Usage
You can run `./configure.sh install` to create symlinks for the files in the files directory. It also extracts anything in the extras directory to the proper place (it appends a unix timestamp to the end of any directories that already exist in order to prevent data loss). I'll need to make it do this if it finds existing dotfiles as well. For now it fails without making the symlink.

To uninstall it, you can run `./configure.sh uninstall`. This unlinks the symlinks created before (failing if it doesn't exist. `ln` probably throws errors if it's a regular file and not a symlink). It also appends the unix timestamp to any .directories it could have placed. Not elegant.

You can use `./configure createzips` to create archives of .directories in the extras directory. For now, it's just ~/.vim.

edit `install()` `uninstall()` and `createzips()` to add more files. Hopefully how that's done is self-explanitory...
