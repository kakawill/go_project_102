#!/bin/bash
touch Dockerfile Dockerfile.deploy
mkdir src
cd src
mkdir conf
cd conf
touch app.conf
cd ..
touch go.src main.go main_test.go
mkdir vendor
mkdir views
cd views
touch invalid-route.html result.html
