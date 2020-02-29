class condition_example1 {
  $variable = "Hi, I'm example1!"
  notify {"Message from here: $variable":}
}

class condition_example2 {
  $variable = "Hi, I'm example2!"
  notify {"Message from here: $variable":}
}

class condition_example3 {
  $variable = "Hi, I'm example3!"
  notify {"Message from here: $variable":}

}

if $facts['os']['family'] == 'Redhat' {
  include condition_example2
}
elsif $facts['os']['family'] == 'Debian' {
  include condition_example3
}
else {
  warning('This is not working')
}

include condition_example1

