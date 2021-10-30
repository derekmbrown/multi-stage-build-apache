# multi-stage-build-apache

This is a small repository used to demonstrate a basic docker multi-stage build with Composer and PHP/Apache images. PHP packages are installed during the Composer stage then copied over into PHP/Apache image during the PHP/Apache stage. View the [Dockerfile](https://github.com/derekmbrown/multi-stage-build-apache/blob/main/Dockerfile).
