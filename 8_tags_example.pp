file {'/usr/local/test/minitest.txt':
ensure => file,
source => 'puppet:///modules/mymodule/minitest.txt',
mode => '0644',
tag => ['mini','minitest'],
}

file {'/usr/local/test/feature.txt':
ensure => file,
source => 'puppet:///modules/mymodule/feature.txt',
mode => '0644',
tag => ['new','feature'],
}
