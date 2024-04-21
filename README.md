# Dev Containers!


## What is this repository for?

This repository will be the codebase for what is used to generate some (devcontainers)[https://code.visualstudio.com/docs/devcontainers/containers].

I'm just getting started with them, so there's probably not going to be much to see here yet.

## How can I use it?

The repo is designed assuming it will be used with [VS Code](https://code.visualstudio.com/), and right now, my dev environment is on a Windows machine running WSL2 and Docker Desktop.

First, you'll want to login to a registry using the BASH scripts under the `registry-login` folder.

Next, you'll want to run the build scripts under the `build-scripts` folder. It's assumed that these will be ran from the top level of the repo (where this README is located).

It should then build and push images like magic!
