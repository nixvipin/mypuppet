class scope_example {
  $variable = "Hi, I'm local!"
  notify {"Message from here: $variable":}
}

$variable = "Hi, I'm top!"

node 'workstation' {
  $variable = "Hi, I'm node!"
  include scope_example
}

