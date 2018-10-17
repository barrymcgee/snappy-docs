# Snapcraft Documentation Website (deprecated)

The is the source code for the *old* Snapcraft Documentation Website, formally hosted at <https://docs.snapcraft.io>, and built with [Jekyll](https://jekyllrb.com/).

Snapcraft documentation is now automatically generated from the posts and pages hosted on the [Snapcraft forum](https://forum.snapcraft.io/c/doc). See our [Documentation guidelines](https://docs.snapcraft.io/t/documentation-guidelines/3798) if you'd like to contribute.

## Building these docs

Requirements:
- Docker should be installed
  - [directions](https://docs.docker.com/install/)
- (Linux only) user should be part of the `docker` group
  - `sudo adduser <user> docker`

The docs website can be built locally by using the `./run` script available within this repository:

```
./run serve
```

Once the environment is created, you can view it at <http://localhost:8202/> in your browser.
