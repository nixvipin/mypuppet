
file { '/usr/local/test':
        ensure => directory,
        mode => '0755',
        owner => 'centos',
        group => 'root'
    }

file {'/usr/local/test/testfile.txt':
   ensure  => present,	
   mode    => '0644',
  content => "Here is my file data"
}


$mydirs = ['/usr/local/test/data',
           '/usr/local/test/data/devops',
           '/usr/local/test/data/myproject']
file { $mydirs :
ensure => directory,
owner => 'root',
group => 'root',
mode => '0755',
}


file {
'/usr/local/test/dir1':
ensure => directory,
owner => 'root',
group => 'root',
mode => '0755';

'/usr/local/test/dir2':
ensure => directory,
owner => 'root',
group => 'root',
mode => '0755';

'/usr/local/test/dir3':
ensure => directory,
owner => 'root',
group => 'root',
mode => '0755';
}

