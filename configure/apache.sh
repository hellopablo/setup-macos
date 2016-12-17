echo "Configuring Apache..."

# @todo - Setup Vhosts
# @todo - Enable mod_rewrite and mod_deflate
# @todo - remove default php module loading
# @todo - change suer and group from _www to pablo:staff
# @todo - change server admin email to p@shedcollective.org
# @todo - AllowOVerride all
# @todo - enable php modules:

#LoadModule php5_module /usr/local/opt/php53/libexec/apache2/libphp5.so
#LoadModule php5_module /usr/local/opt/php54/libexec/apache2/libphp5.so
#LoadModule php5_module /usr/local/opt/php55/libexec/apache2/libphp5.so
#LoadModule php5_module /usr/local/opt/php56/libexec/apache2/libphp5.so
#LoadModule php7_module /usr/local/opt/php70/libexec/apache2/libphp7.so
#LoadModule php7_module /usr/local/opt/php71/libexec/apache2/libphp7.so

# @todo - add index.php to DirectoryIndex / dir_module
# @todo - add php handler:
#<FilesMatch \.php$>
#    SetHandler application/x-httpd-php
#</FilesMatch>