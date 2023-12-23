# Runetracker Docker
This repository contains a Dockerfile that can be used to run arbitrary scripts using cron inside Docker. An example is provided for a script which automatically updates a characters stats on RuneTracker.org.

## Instalation
### Preperation
Add your scripts to the script folder and create a `crontab` file calling the script. An example is provided with `crontab.example`. You can choose to write the script output to logs. However, this is optional.

### Running using Docker
Build the container:
```bash
docker build -t chron-runetracker .
```
Run the container:
```bash
docker run -d --name RuneTrackerUpdater chron-runetracker
```

### Running using Docker compose
Use the provided `docker-compose.yaml`.
```bash
docker compose up --build -d
```

## Todo
- Make it possible to change the crontab durring execution
- Make it possible to add scripts durring execution