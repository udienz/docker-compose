#!/bin/bash


gen_random ()
{
    echo $(cat /dev/urandom | tr -cd "[:alnum:]" | head -c 10)
}

if [ -f common.env ]; then
    echo "common.env is exits. moving.."
    mv common.env common.env.orig
fi

get_env ()
{
    grep $1 common.env | sed -e 's/=/ /g' | awk {'print$2'}
}
ENV="MYSQL_ROOT_PASSWORD MYSQL_DATABASE MYSQL_PASSWORD MYSQL_USER"

for a in $ENV
do
    echo "$a=$(gen_random)" >> common.env
done

echo "WORDPRESS_DB_PASSWORD=$(get_env MYSQL_PASSWORD)" >> common.env
echo "WORDPRESS_DB_USER=$(get_env MYSQL_USER)" >> common.env
echo "WORDPRESS_DB_NAME=$(get_env MYSQL_DATABASE)" >> common.env
