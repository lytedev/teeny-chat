# Dependencies

* [`websocketd`][websocketd]
* GNU `tail`

**NOTE**: Shell injection may be possible. This application is
a proof-of-concept and a toy.

## Usage

Serve `index.html` over your preferred webserver.

### WebSocket via HTTP

```bash
websocketd --port=8080 ./server.bash
```

### WebSocket via HTTPS

```bash
sudo websocketd --ssl -sslcert=/etc/letsencrypt/live/$DOMAIN/cert.pem
--sslkey=/etc/letsencrypt/live/$DOMAIN/privkey.pem --port=8080 ./server.bash
```
