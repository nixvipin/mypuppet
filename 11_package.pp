node 'workstation' { 
   package { ['vim','git','httpd'] : 
      ensure => present
   } 

file {'/var/www/html/index.html':
   ensure  => present,
   mode    => '0644',
  content => "My new website content"
}

service { httpd:
name => httpd,
ensure => running,
enable => true,
}

} 

