#!/bin/sh

aws s3 cp ./www s3://udagramfrontend --recursive --cache-control max-age=0