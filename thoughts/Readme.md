# Coop with Fig

While writing a sample yml file it felt like fig was adept at handling containers so long as their base images already existed. It has crippled support for building the current directory.

As such it would make sense to leave fig to handle containers and let ymlocker merely handle the building of images.

## What about make?

At this point you could solve this problem with a Makefile. However you would have to manually manage the replacement of the Dockerfile and in general I find yaml files to be nicer so I'm still happy to do this
