# interlok-solace-demo

## What is this

This is an complete interlok instance which basically show-cases interacting with Solace message broker via standard JMS messaging. Since the optional `interlok-solace` package requires a license you will need one of those.

## Quickstart

* You'll need java of course because gradle is the build system.
* Docker of course
* Get yourself a license, and make a file called `license.properties.docker` in _src/main/interlok/config
```
adp.license.key=whatever-your-license-key-is
```
* `./gradlew docker`
    * Since you haven't specified a image name, it will be _adaptrislabs/interlok-solace_
    * The version is _latest_;
* Either run `docker-compose up` or `./gradlew dockerComposeUp`
    * Wait for the adapter to fully start (you'll see something in the console output to that effect).
    * The channels are set with auto-start=false since the base solace docker image takes a while to start up.
* Login to the UI and start the adapter.
    * Every 10 seconds a message will be sent to Solace message broker...

## Resources

* https://interlok.adaptris.net/interlok-docs
* https://hub.docker.com/_/solace-pubsub-standard

## Gradle flags

You can control some behaviour by passing in project properties in the form *-PpropertyKey=value*

Property Key | Default Value | Description | Notes
------------ | ------------- | ----------- | -----
releaseVersion|latest|The docker tag version ||
dockerImageName|adaptrislabs/interlok-solace| The docker image name||
buildEnv|docker|Change it to anything else to drive local properties from your hostname| This directly affects the way property files are sourced, by default it will be `variables.propertes.{buildEnv}`|
