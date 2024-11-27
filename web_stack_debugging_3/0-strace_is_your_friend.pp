# This Puppet manifest resolves the issue causing a 500 Internal Server Error on a WordPress site by ensuring
# Apache, PHP, and necessary permissions for WordPress files are correctly set.

# Ensure Apache is installed and running
package { 'apache2':
  ensure => installed,
}

# Ensure PHP and necessary PHP extensions for WordPress are installed
package { ['php', 'php-mysql', 'php-curl', 'php-json', 'php-gd']:
  ensure => installed,
}

# Ensure the Apache service is running
service { 'apache2':
  ensure => running,
  enable => true,
}

# Ensure the WordPress directory exists and has the correct permissions
file { '/var/www/html/wordpress':
  ensure  => directory,
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0755',
  recurse => true,
}

# Set correct ownership for all WordPress files
exec { 'set_permissions':
  command => 'chown -R www-data:www-data /var/www/html/wordpress',
  path    => ['/bin', '/usr/bin'],
  unless  => 'test $(stat -c "%U" /var/www/html/wordpress) == "www-data"',
  require => File['/var/www/html/wordpress'],
}

# Ensure Apache is restarted if the permissions are updated
service { 'apache2':
  ensure    => running,
  enable    => true,
  subscribe => Exec['set_permissions'],
}
