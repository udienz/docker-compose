#!/bin/bash


gen_random ()
{
    echo $(cat /dev/urandom | tr -cd "[:alnum:]" | head -c 10)
}

if [ -f common.env ]; then
    echo "common.env is exits. moving.."
    mv common.env common.env.orig
fi


ENV="MYSQL_ROOT_PASSWORD MYSQL_DATABASE MYSQL_PASSWORD MYSQL_USER"

for a in $ENV
do
    echo "$a=$(gen_random)" >> common.env
done
