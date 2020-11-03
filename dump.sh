
today=`date '+%Y_%m_%d__%H_%M_%S'`;

dir="../data";

filename="db_dumb_$today.sql";

# Create dump file
cmd='mysqldump --user "$MYSQL_USER" -p"$MYSQL_ROOT_PASSWORD" --databases "$MYSQL_DATABASE"';
docker-compose exec mysql sh -c "$cmd" > $dir/$filename

echo "🍻🍻 Nice! 🍻🍻 Dump done: ./data/$filename";
 