echo "Configuring MySQL..."

echo "MySQL - Copying config"
cp resources/.my.cf ~/.my.cf

echo "MySQL - Hardening"
mysql_secure_installation

echo "MySQL - Creating default users - enter the root password you just set:"
mysql -uroot -p -e "CREATE USER IF NOT EXISTS 'localuser'@'localhost' IDENTIFIED BY 'localpassword';GRANT ALL ON *.* TO 'localuser'@'localhost';FLUSH PRIVILEGES;"