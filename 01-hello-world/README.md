# Express in Docker

## Usage

> The application run on your localhost on port `3000`. After starting this application you can access it by `http://localhost:3000/`

### Docker

> Make sure `Docker` is available in your shell. [More info](https://docs.docker.com/engine/installation/)

Init the container and run it in detached mode:
```sh
$ docker build -t jpeer/hello-world .
$ docker run -d -p 3000:3000 --name jpeer_hello-world jpeer/hello-world
```

Stop the named container:
```sh
$ docker stop jpeer_hello-world
```

Start the named container again:
```sh
$ docker start jpeer_hello-world
```

### Local Development

```sh
$ npm i
$ npm run dev
```
