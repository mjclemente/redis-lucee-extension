# Redis Lucee Extension Example
This project is an example of one approach to using Redis as an external cache for Lucee, within a containerized environment. I've tried to strip it down to only the essentials, so that it's easier to see and understand how the process works and the pieces connect. 

*This code is for demonstration and development purposes only. That is, in several places it exchanges security for convenience and simplicity.*

## Tooling

* Docker
* [CommandBox Docker Image](https://hub.docker.com/r/ortussolutions/commandbox/) (for Lucee)
* [Ortus Redis Extension](https://www.ortussolutions.com/products/redis-lucee)
* [Docker Redis Image](https://hub.docker.com/_/redis/)
* [docker-lex-install](https://www.forgebox.io/view/docker-lex-install)

## Project Steps

Want to give this project a spin yourself? Here are the steps:

1. Clone the repo: `git clone git@github.com:mjclemente/redis-lucee-extension.git`
2. Navigate into the project: `cd redis-lucee-extension`
3. Run `docker-compose up`
4. Once the project has been built/started, you can view the result at http://127.0.0.1:8080
5. If you have a tool like [TablePlus](https://tableplus.com/), you can inspect the Redis cache to see the session and object cache data, by connecting at 127.0.0.1:6379.

## What It Does

* Builds a Lucee server image (starting with the CommandBox Docker image)
* Loads the Ortus Redis Extension (Trial)
* Warms up the image in order to ensure the Ortus Redis Extension is installed and ready
* Uses [CFConfig](https://cfconfig.ortusbooks.com/) to configure the session and object caches to be stored externally in Redis
* Starts the server
* Dumps the session and object cache on the `index.cfm` so that you can see that it's working.