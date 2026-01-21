# Instalation 

```
git clone git@github.com:OstrichDowneyJr/dotfiles.git ~/.dotfiles
```

# Setup
To install anything here just be in the direcory `.dotfiles`, then use 

```
stow <name_of_pkg> 
```
to creat symlink to selected pkg

inside of the created folder exists list of needed pkg for that pkg to function.


to install packadges as needed us:

```
pacman -S --needed - < <path/to/list_pkg>
```


