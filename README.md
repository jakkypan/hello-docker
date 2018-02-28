# hello-docker

The project is the smallest docker example that just print some information intervally.


it show like below:

![](show.gif)


## how to publish 
 
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
