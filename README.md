# multi-stage-build-apache

This is a small repository used to demonstrate a multi stage docker build setup with Composer and PHP/Apache images.

### How-to use:

1. Build Dockerfile: `make build`.
1. Start container: `make run`.
1. Test app: `make test`.
1. Verify the Smiling Face with Sunglasses emoji displays. 

### What's Happening:

1. Composer stage is built.
1. Composer stage installs PHP packages.
1. PHP/Apache stage is built.
1. PHP/Apache stage copies over the PHP package install files from Composer stage into PHP/Apache stage.