## Capistrano runner

To run your tasks you can just add the volume of your capistrano code into the docker images.
Also use it to mount the ssh key into the runtime container.

Example:

```docker
docker run --rm \
    -v "<path-to-keys>":/ssh-keys \
    -v "<path-to-<our-app>":/usr/src/app \
    -w /usr/src/app bjoernHeneka/docker-capistrano-runner:latest \
    /cap.sh production deploy
```