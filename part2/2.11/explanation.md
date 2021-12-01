# What I have done and why
- Created a simple express app that console logs hello world and responds with hello world at `/`
    - Reason for such as simple app was that currently I don't have a project to dockerize in a timely manner
- Created a docker-compose that runs the application in development mode. Restarts the dev server when changes are made
- Named the compose file `docker-compose-dev.yml`
    - Did this because in the future there might be a docker-compose for example for other environments than dev, or different compose files to just run backend / frontend.
    - Needs to be launched with command `docker-compose -f docker-compose-dev.yml`

Repo for the project in question can be found [here](https://github.com/oskarikotajarvi/express-hello-world)

Thought about creating a more complex setup with nginx, database etc, but as mentioned couldn't do it in a timely manner.
