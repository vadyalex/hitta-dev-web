# hitta-dev-web

## Use

Map desired project directory to `/data` in the container.

Install npm libraries from the _current_ directory:

`docker run -i -t --name web-3.0-grunt --rm -v $PWD:/data vadyalex/hitta-dev-web sh -c "npm install"`

Run Gradle clean up task in from the _current_ directory:

`docker run -i -t --rm -v $PWD:/data vadyalex/hitta-dev-web sh -c "gradle clean"`

Run Play 1.2 in the _current_ directory:

`docker run -i -t --rm -v $PWD:/data vadyalex/hitta-dev-web sh -c "play version"`

## Improve

Perform Dockerfile updates and build local container with _latest_ tag:

`make build`

Push tagged container and update _latest_ on docker hub:

`TAG=2.0 make`
