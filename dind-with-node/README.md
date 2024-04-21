# The Docker-in-Docker with Node.js Dev Container

This is the main container that is used to build the other containers. It's a Docker-in-Docker container with Node.js installed, which is required for the current [dev containers cli](https://github.com/devcontainers/cli).

It is essentially going to be the container that will/can build other dev containers. I thought it would be a fun first goal to create the "golden" image so I can go without installing a full node.js dev environment on my machine.
