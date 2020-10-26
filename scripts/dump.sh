
today=`date '+%Y_%m_%d__%H_%M_%S'`;

dir="../data";

filename="db_dumb_$today.sql";

# Create dump file
cmd='mysqldump -u "$MYSQL_USER" -p"$MYSQL_ROOT_PASSWORD" "$WORDPRESS_DB_NAME"';
docker-compose exec mysql sh -c "$cmd" > $dir/$filename

echo "🍻🍻 Nice! 🍻🍻 Dump exported: ./data/$filename";
 