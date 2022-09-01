# Static HTML Page w/ Single Colour

Displays a static HTML page with a configurable background colour. Useful for easily testing deployment pipelines. (And put some meaning into blue/green and red/black...)

Runs on port 80 by default. To change its colour, run:
```
docker run -e COLOUR=red -p 8080:80 -it moertel/colour
```

Or you can use hex codes as well:
```
docker run -e COLOUR='#000' -p 8080:80 -it moertel/colour
```

To emit metrics to NewRelic, the endpoint `/ping` can be... well... pinged. It will send a static metric to NewRelic with the license key specified in `NEWRELIC_LICENSE_KEY`.
```
docker run \
  -e COLOUR=blue \
  -e METRIC=2.4 \
  -e NEWRELIC_LICENSE_KEY=abc123 \
  -p 8080:80 \
  -it moertel/colour
```
Calling `curl -X GET http://localhost:8080/ping` will then send the static metric value 2.5 to NewRelic. It can be queried like this:
```
SELECT dummy FROM Metric WHERE colour='blue'
```
