# Pipeline

This pipeline was made using CircleCI v2.1 the latest version and used two orbs which are *aws-cli@3.0.1* and *aws-elastic-beanstalk@2.0.1*.

I didn't use an orb to install node.js as the executar I used for running my Jobs is a docker image that comes with node v16.14 preinstalled on it. the image name is "**cimg/node:16.14.2**".

## Jobs

the Pipeline I made is made out of one job that contains 9 commands to do and they are in order as follows :

1. checkout => fetches the code

2. aws-cli/setup => install and setup the aws cli

3. eb/setup => install and setup the eb cli

4. run command "npm run install:api" to install backend dependencies

5. run command "npm run install:frontend" to install frontend dependencies

6. run command "name run build:api" to transpile the TS code into js and make a zip file ready to deploy to aws elasticbeanstalk.

7. run command "npm run build:frontend" to build the code

8. run command "npm run deploy:frontend" to deploy the build folder called www to s3 bucket.

9. run command "eb deploy Udagramapp-env" to deploy code to elasticbeanstalk but it deploys an artifact which is the zip file resulted from previous build step configured in file [config.yml](../.elasticbeanstalk/config.yml) in .elaticbeanstalk folder.
