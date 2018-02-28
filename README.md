# hello-docker

The project is the smallest docker example that just print some information intervally.


it show like below:

![](show.gif)


## Create yourself dock project

create dock project is mainly to create the dockerfile.

## Build yourself image

some useful commands:

```shell
# 列出本机正在运行的容器
docker container ls
# 列出本机所有容器，包括终止运行的容器
docker container ls --all
# 删除某个容器
docker container rm <container-id>

# 列出本机的所有 image 文件。
docker image ls
# 删除 image 文件
docker image rm [imageName] | [imageId]
```

start build:

```shell
docker image build [OPTIONS] PATH | URL | -
```

then you can run it to check your code is right:

```shell
docker container run --name hello-docker hello-docker:1.0.0
```

## How to publish 
 
firstly, you should have an account in https://hub.docker.com.

next, login:

```shell
docker login
```

next, lebel the image you have builded with usename and version:

```shell
docker image tag [imageName] [username]/[repository]:[tag]
```

finally, just push:

```shell
docker image push [username]/[repository]:[tag]
```
