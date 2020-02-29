exec { 'echo "This is new welcome page on this site test" > /var/www/html/index.html':
path => "/usr/bin:/usr/sbin:/bin",
}

