# GoCD-Julia-Tools
Notes, tools and scripts I have to make [GoCD](https://docs.gocd.org/current/) work for running CI for julia projects


### `ensure_agent.sh`

run this (it'll ask for sudo) to setup the agent service and install the other scripts.
It does nothing if it is already all set up


## agent_scripts

### `juliarun`

GoCD's custom runner doesn't seem to like arguments like `julia -e "versioninfo();Pkg.test(\"FooBar\")"`.
the `juliarun` script is basically just a wrapper around `julia -e`


# Notes

## the GoCD agent user `go`

GoCD agents run in a service user (as is normal for services).
It is called `go`.
You can switch to it, using `sudo su go` (`su` = switch user).
Which lets you debug things.

It has a home directory at `/var/go` which will contain the `.julia` directory of packages.
