case $operatingsystem {
centos, redhat: { $service_name = 'httpd' }
debian, ubuntu: { $service_name = 'nginx' }
}
package { '$service_name':
ensure => installed,
}

service { $service_name:
name => $service_name,
ensure => running,
enable => true,
subscribe => File['index.html'],
}

file { 'index.html':
path => '/var/www/html/index.html',
ensure => file,
require => Package[$service_name],
source => "puppet:///modules/httpd/index.html",
}

