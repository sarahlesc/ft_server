service nginx start
service mysql start
service php7.3-fpm start

# Configure the wordpress database

# 1/ creation of the database
echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
# 2/ creation of a root account that has all the permissions to access all tables that doesn't request any passwords.
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;"| mysql -u root --skip-password
#flush privileges = used only if you modify the grant tables directly using statements such as INSERT, UPDATE, or DELETE.
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
# be able to have access to the database
echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password

bash
