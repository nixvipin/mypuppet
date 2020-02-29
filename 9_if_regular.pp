if $hostname =~ /^work/ { 

exec { "indexhtml":
   command => "/usr/bin/echo A new home page setup by puppet > /var/www/html/index.html"
}
}
