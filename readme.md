# Cloudlog on docker-compose

Prepare the file:

```sh
cp prod.sample.env prod.env
nano prod.env
```

And edit the passwords.

Pull up:

```sh
docker-compose -f "docker-compose.yml" up -d --build
```

Pull down:

```sh
docker-compose -f "docker-compose.yml" down
```
