# alpine-lynx
docker autobuild of lynx with ssl on alpine

I didn't seem to have ssl support with the alpine lynx package

I built it from source with various dep packages on alpine

can use to do browsing of the web in a container 
 docker run -it adamoss/lynx https://www.google.com/

or cool stuff like lynx dump
 docker run -it adamoss/lynx https://www.slashdot.org/
