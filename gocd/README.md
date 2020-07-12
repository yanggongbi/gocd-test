## Deploy GoCD with docker compose

### version info

 - GoCD Server (19.10.0)
 - GoCD Agent (with docker-in-docker)

### docker-compose

 - To start GoCD using docker-compose, do:

```
cd docker-gocd-1910
docker-compose build
docker-compose up -d
```

### setup demo pipeline

 - Wait for GoCD to boot and then go to http://127.0.0.1:8153
 - Go to *Agents* tab, click "Enable"

## Import yaml pipeline

 - Import `gocd-test.gocd.yaml` into GoCD (the pipeline was built manually and exported as yaml format)
 - The demo pipeline only do two execs:

1. `command: ./build_war_builder.sh`
2. `command: ./build_war_and_image.sh`

## To do

1. publish the docker image to Dockerhub
2. deploy the docker image to a single node kubenetes
