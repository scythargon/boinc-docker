### Usage:

Docker version required: 24.*

```bash
# On the host machine:

docker run --rm -it scythargon/boinc bash

# Everything below - in the just opened docker container shell:

screen  # Runs GNU Screen app - terminal multiplexer

boinc  # Start the boinc itself

# press Ctrl+c to create a new Screen window
# (then use `ctrl+a n` to switch between the windows)

# This command goes in the newly open Screen window:
boinccmd --acct_mgr attach https://scienceunited.org "your_scienceunited_email" "password" 

# all done, happy contributing!
```