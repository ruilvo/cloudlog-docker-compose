# Cloudlog on Docker

Prepare the file:

```sh
cp prod.sample.env prod.env
nano prod.env
```

And edit the passwords.

Pull up the server:

```sh
docker compose up -d
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
docker compose down
```

To gain terminal access:

```sh
docker compose exec cloudlog sh
```
