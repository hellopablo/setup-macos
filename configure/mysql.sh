echo "Configuring MySQL..."

echo "MySQL - Hardening"
mysql_secure_installation

mysql -uroot -p -e "CREATE USER IF NOT EXISTS 'localuser'@'localhost' IDENTIFIED BY 'localpassword';"
mysql -uroot -p -e "GRANT ALL ON *. TO 'localuser'@'localhost';"
mysql -uroot -p -e "FLUSH PRIVILEGES;"