# Cloudlog on Docker

Prepare the file:

```sh
cp prod.sample.env prod.env
nano prod.env
```

And edit the `CLOUDLOG_URL`, `MYSQL_ROOT_PASSWORD`, and `MYSQL_PASSWORD`
environment variables.

Pull up the server:

```sh
docker compose up -d --build
```

And then complete the installation as usual, by visiting
`http://<your_host>/install`.

The database hostname will be `db`, the user will be `cloudloguser`, the
database will be `cloudlogdb`, and you can just leave the "Directory" option
blank. The password for the database will be the *value* of `MYSQL_PASSWORD`,
**not** `MYSQL_ROOT_PASSWORD`.

Don't forget the after-installation account:

```txt
Demo User Account

    Username: m0abc
    Password: demo
```

Create your own administrator account, and delete this default account ASAP!

To pull down the server:

```sh
docker compose down
```

To gain terminal access:

```sh
docker compose exec cloudlog bash
```
