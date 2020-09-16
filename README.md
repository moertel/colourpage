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
