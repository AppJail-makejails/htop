# htop

htop is an interactive system monitor process viewer and process manager. It is designed as an alternative to the Unix program top.

wikipedia.org/wiki/Htop

## How to use this AppJail

```console
$ bin install https://github.com/appjail-makejails/htop
$ test -x ~/bin/htop.appjail; echo $?
0
$ htop.appjail
```


### User Attributes

##### `${X11APPJAIL_APPNAME}:${X11APPJAIL_PROFILE}.jail.ephemeral`

Mark the jail as ephemeral. See `ephemeral` option in `appjail-quick(1)` for details.

Although the jail may be destroyed, its data is preserved in the user directory (see `${X11APPJAIL_USERDIR}` in `x11appjail-spec(5)`).

## OCI Configuration

```yaml
build:
  variants:
    - tag: 15.1
      containerfile: Containerfile
      aliases: ["latest"]
      default: true
      args:
        FREEBSD_RELEASE: "15.1"
        NO_PKGCLEAN: "1"
      cache_dirs: ["pkgcache0:/var/cache/pkg"]
```
