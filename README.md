Runs a [Mesos](http://mesos.apache.org/) slave instance.

Available on the Docker Index as [thefactory/mesos-slave](https://index.docker.io/u/thefactory/mesos-slave/):

    docker pull thefactory/mesos-slave

### Versions
* Mesos 0.18.2

### Usage
For Marathon to register with the Mesos cluster, you will need to enable host networking with `--net=host` (available in Docker 0.11+, see [announcement](http://blog.docker.io/2014/05/docker-0-11-release-candidate-for-1-0/)).

Starting the container:

    docker run \
        --net=host \
        -p 5051:5051 \
        thefactory/mesos-slave:latest \
        [MESOS_OPTIONS]

(See Mesos's [documentation](http://mesos.apache.org/documentation/latest/configuration/) for available arguments)

Once the container is up, visit the cluster management UI on a master and confirm the slave has registered.