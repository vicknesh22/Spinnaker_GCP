#!/bin/bash

mv /home/ec2-user/application/*.zip /usr/local/tomcat9/webapp

cd /usr/local/tomcat9/webapp/
unzip project_test.zip
