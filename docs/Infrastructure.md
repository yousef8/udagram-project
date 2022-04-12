# Infrastructure description

This projcet is deployed on AWS with three different services which are:

- **RDS**
- **Elastic Beanstalk**
- **s3**

## RDS

- Contains PostgreSQL database.
- Database isn't publicaly accessible.

## Elastick Beanstalk

- Connects to the RDS database internally through the VPC created.

- Conatians the backend API which the frontend fetches it.

- This is the [link](http://udagramapp-env.eba-mginsw7i.us-east-1.elasticbeanstalk.com/api/v0) of the API.

- You can add `/feed` after the API link give above to get the feed.

- You can add `/users/auth` after the API link give above to get authentication token.

- You can add `/users/:id` after the API link give above to get user info.

## s3

- s3 bucket with made with the name "udagramfrontend" to host the frontend build of the site.

- The bucket is publically accessible through this [link](http://udagramfrontend.s3-website-us-east-1.amazonaws.com).
