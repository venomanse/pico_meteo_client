# sender

## Environment

``` env
export POCKETBASE_URL=
export PICO_METEO_URL=
export X_TOKEN=
```

``` bash
# Build
docker build . -t sender
# Run
docker run -e "POCKETBASE_URL=url" -e "PICO_METEO_URL=url" -e "X_TOKEN=token" -d -p 8080:8080 sender
```
