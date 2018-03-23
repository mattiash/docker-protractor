# Protractor and Chrome in Docker

This is a docker container that allows you to run your protractor tests in it.

## Usage

Mount your tests at `/project` inside the container. There should be a
protractor configuration at `/project/conf.js`. See the [examples/](examples/)
dir for an example.

Then run the container passing it any parameters to protractor:

    docker run -it --rm -v `pwd`/examples:/project mattiash/protractor --baseUrl=https://angularjs.org

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
## Author

Mattias Holmlund <mattias@holmlund.se>
