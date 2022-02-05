# Cloudlog on docker-compose

Prepare the file:

```sh
cp prod.sample.env prod.env
nano prod.env
```

And edit the passwords.

Pull up the server:

```sh
docker-compose -f "docker-compose.yaml" up -d --build
```

And then complete the installation as usual, by visiting
`http://<your_host>/install`.

The database hostname will be `db`.

Don't forget the after-installation account:

```txt
Demo User Account

    Username: m0abc
    Password: demo
```

To pull down the server:

```sh
docker-compose -f "docker-compose.yaml" down
```

To clear/clean all Docker images, run:

```sh
docker system prune -a -f
docker volume prune -f # **This _can_ lead to data loss**
```

To gain terminal access:

```sh
docker exec -it cloudlog-docker-cloudlog-1 /bin/bash
```
