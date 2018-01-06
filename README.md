# GoCD-Julia-Tools
Notes, tools and scripts I have to make [GoCD](https://docs.gocd.org/current/) work for running CI for julia projects


### `ensure_agent.sh`

run this (it'll ask for sudo) to setup the agent service and install the other scripts


## agent_scripts

### `juliarun`

GoCD's custom runner doesn't seem to like arguments like `julia -e "versioninfo();Pkg.test(\"FooBar\")"`.
the `juliarun` script is basically just a wrapper around `julia -e`
