file { '/var/www/html/index.html':
ensure => file,
mode => '754',
source => 'puppet:///modules/httpd/index2.html',
require => Package['httpd'],
}

package { 'httpd':
ensure => present,
before => File['/var/www/html/index.html'], 
}

