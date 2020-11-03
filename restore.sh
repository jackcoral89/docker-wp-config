
# # Replace DEV_URL using WP-CLI in wp container
# cmd='wp --allow-root search-replace "$DEV_URL" "$LIVE_URL" --skip-columns=guid'
# docker-compose exec wordpress sh -c "$cmd"

# today=`date '+%Y_%m_%d__%H_%M_%S'`;
# dir="../data";
# filename="db_$today.sql";

# Create dump file
# cmd='mysqldump -u "$MYSQL_USER" -p"$MYSQL_ROOT_PASSWORD" "$WORDPRESS_DB_NAME"';
# docker-compose exec mysql sh -c "$cmd" > $dir/$filename

sed -i 's/http:\/\/localhost:7500/https:\/\/www.example.com/g' /data/db.sql

# echo "🍻🍻 Nice! 🍻🍻 Find & replace done: ./data/$filename";
