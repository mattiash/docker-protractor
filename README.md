# Protractor and Chrome in Docker

[![Docker Build Status](https://img.shields.io/docker/build/mattiash/protractor.svg)](https://hub.docker.com/r/mattiash/protractor/)

This is a docker container that allows you to run your protractor tests in it.

## Usage

Mount your tests at `/project` inside the container. Pass the name of the configuration file relative to /project as a parameter to the container. See the [examples/](examples/)
dir for an example.

Then run the container passing it any parameters to protractor:

    docker run --rm -v `pwd`/examples:/project mattiash/protractor  --baseUrl=https://angularjs.org conf.js

Output:

    Google Chrome 65.0.3325.181
    Node version v8.10.0
    Protractor version Version 5.3.0
    (node:36) [DEP0022] DeprecationWarning: os.tmpDir() is deprecated. Use os.tmpdir() instead.
    [19:59:52] I/launcher - Running 1 instances of WebDriver
    [19:59:52] I/direct - Using ChromeDriver directly...
    Started
    .


    1 spec, 0 failures
    Finished in 4.442 seconds

    [19:59:58] I/launcher - 0 instance(s) of WebDriver still running
    [19:59:58] I/launcher - chrome #01 passed

## Generating a report with screenshots

The docker image contains the npm module [protractor-screenshoter-plugin](https://www.npmjs.com/package/protractor-screenshoter-plugin) that can generate a report with screenshots of all test-cases. The report is generated inside the container and needs to be copied out to be accessed. See [run-tests.sh](run-tests.sh) and [screenshot-conf.js](screenshot-conf.js) for an example of how to use it.

## Screen resolution

The docker image defaults to running Chrome in an environment with resolution 1024x768 and 24 bit colordepth. To change it, set the environment variable RESOLUTION:

    docker run --env RESOLUTION=1280x800x24 ...

Note that this is the size of the desktop. The size of the area that the
html is rendered on will be smaller.

## Author

Mattias Holmlund <mattias@holmlund.se>
