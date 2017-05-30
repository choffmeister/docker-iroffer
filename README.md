# docker-ngircd

Simple docker image for running [ngircd][ngircd] as IRC server and [iroffer mod dinoex][iroffer-dinoex] as DCC bot.

This image is not for production usage, but just for learning purposes.

Based on choffmeister/iroffer docker image.

## Usage

### passive dcc mode: 

```bash
cd passive
docker build . --tag iroffer_passive
./start.sh
#-- OR --
docker run \
           -d \
           -p 6667:6667 \
           -p 50000-50010:50000-50010 \
           --env EXTERNAL_IP=$(docker-machine ip default) \
           --name iroffer_passive \
           iroffer_passive
```

### active dcc mode: 

```bash
cd active
docker build . --tag iroffer_active
./start.sh
#-- OR --
docker run \
           -d \
           -p 6667:6667 \
           -p 50000-50010:50000-50010 \
           --env EXTERNAL_IP=$(docker-machine ip default) \
           --name iroffer_active \
           iroffer_active
```

## Note on image size

This image contains some test files. So the image is quite large on paper (> 1.3 GiB), but since these file only contain binary zeros, the compressions reduces the actual transferred data amount while pulling a lot.

[ngircd]: http://ngircd.barton.de/
[iroffer-dinoex]: http://iroffer.dinoex.net/
