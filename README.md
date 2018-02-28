# hello-docker

The project is the smallest docker example that just print some information intervally.

---------


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

# container run是新建容器，每运行一次就会新建一个容器。如果希望重复使用容器，则使用这个命令
docker container start
# 中止容器，向容器里面的主进程发出 SIGTERM 信号，然后过一段时间再发出 SIGKILL 信号（给了程序进行收尾的工作）
docker container stop
# 中止容器，直接向容器里面的主进程发出 SIGKILL 信号（相当于强制中止，可能存在数据丢失的问题）
docker container kill
# 查看docker容器的输出，即容器里面shell的标准输出
docker container logs
# 命令用于从正在运行的 Docker 容器里面，将文件拷贝到本机
docker container cp

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
