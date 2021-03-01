# pytorch-build-arm
This docker container is based off [librephotos-docker](https://github.com/LibrePhotos/librephotos-docker) and builds pytorch for aarch64.

## Builds
Get builds [here](http://unofficialpi.org/librephotos/)

## Usage

Use a Pi4 with swap to build, flash the [UbuntuDockerPi image](https://github.com/guysoft/UbuntuDockerPi). Attaching an external harddrive and adding it to the docker-compose yml is recomended.

```
git clone https://github.com/guysoft/pytorch-build-arm.git
cd pytorch-build-arm
sudo docker-compose build
sudo docker-compose up
sudo docker exec -it pytorch bash
/build.sh
```
The file should be written to ``/pytorch/dist/*.whl``
