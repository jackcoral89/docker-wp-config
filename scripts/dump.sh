this_dir=$(cd `dirname $0` && pwd)
file="./data/dump.sql"

# Create dump file
# cmd='exec mysqldump "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD"'
cmd='mysqldump -u root -proot docker_wp_config'
docker-compose exec mysql sh -c "$cmd" > $file
 