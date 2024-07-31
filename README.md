# Dotfiles

Adopt any file located within `${HOME}` defined within a stow package (dot files must be `dot-` prefixed).

```
$ mkdir foobar
$ touch foobar/dot-foobar
$ stow --dir ${PWD} --target ${HOME} --adopt --dotfiles --verbose [--simulate] foobar
MV: .foobar -> dotfiles/foobar/dot-foobar
LINK: .foobar => dotfiles/foobar/dot-foobar
```

Uninstall a stow package

```
stow --delete <package>
```
