# dotfiles

**Install**

```bash
$ make # or make dotfiles
```

Executing `make` will create symlinks from this repo to your home folder.

**Uninstall**

```bash
$ make uninstall
```

This will remove all symlinks from your home folder to this repo.

**Testing**

```bash
$ make test
```

This will run [ShellCheck](https://github.com/koalaman/shellcheck) analysis inside a container.
