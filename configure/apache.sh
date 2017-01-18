echo "Configuring Apache..."

# Handy vars
apache_httpd_path=dirname $(sudo apachectl -V | grep "SERVER_CONFIG_FILE" | cut -d '"' -f 2)
apache_httpd_conf="$dirname/httpd.conf"
apache_httpd_vhosts="$dirname/extra/httpd-vhosts.conf"
apache_backup_string=$(date +%Y-%m-%d-%H-%M-%S)

echo "Apache - Backing up current config"
cp "$apache_httpd_conf" "$apache_httpd_conf.bkp-apache_backup_string"
cp "$apache_httpd_vhosts" "$apache_httpd_vhosts.bkp-apache_backup_string"

echo "Apache - Enabling modules:"
echo " - mod_rewrite"
# @todo
echo " - mod_deflate"
# @todo

echo "Apache - change user and group from _www to pablo:staff"
# @todo

echo "Apache - AllowOverride all"
# @todo

echo "Apache - setting up PHP modules:"
echo " - remove default PHP module"
# @todo - remove default PHP module
# @todo - add these ones to the end of the file

echo " - add brew PHP modules"
#LoadModule php5_module /usr/local/opt/php53/libexec/apache2/libphp5.so
#LoadModule php5_module /usr/local/opt/php54/libexec/apache2/libphp5.so
#LoadModule php5_module /usr/local/opt/php55/libexec/apache2/libphp5.so
#LoadModule php5_module /usr/local/opt/php56/libexec/apache2/libphp5.so
#LoadModule php7_module /usr/local/opt/php70/libexec/apache2/libphp7.so
#LoadModule php7_module /usr/local/opt/php71/libexec/apache2/libphp7.so

echo "Apache - Enable *.php files"
# @todo - add index.php to DirectoryIndex / dir_module
# @todo - add PHP handler:
#<FilesMatch \.php$>
#    SetHandler application/x-httpd-php
#</FilesMatch>

echo "Apache - Adding default vhosts"
vhost add --domain="phpinfo.dev" --path="~/Sites/phpinfo" --no-database
echo "<?php phpinfo();" > ~/Sites/phpinfo/index.php

echo "Apache - restarting"
sudo apachectl -k restart
