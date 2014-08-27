# Ymlocker

A command line tool for manager docker containers and images, much like fig.

## Development

An effort has been made to make all development tasks (bar file editing) be sufficiently handled by docker containers. This helps lessen initial burden of setting up a dev environment.

### Building the Image

```
docker build -t ymlocker .
```

### Running Guard

```
docker run --rm -it -v `pwd`:/usr/src/app -u $UID ymlocker bundle exec guard
```

### Notifications

I also have written a notifier.rb file which will take the output of a test result written to .guard_result and make it friendly for `notify-send` on linux. It is hard-coded to hell but maybe I will clean things up later. I also use this in together with the following bash command:

```
while true; do inotifywait -e close_write,moved_to,create .guard_result; cat .guard_result | ruby notifier.rb | xargs notify-send; done
```

### Is this really easier than installing dependencies?

That depends on how many dependencies there are. However the point of this gem is to provide a nicer interface to all this. Fig already does this somewhat but there are some missing features that I want so I'll practice a little while I make my version.

As the project progresses I'll replace the above commands with simpler alternatives.
