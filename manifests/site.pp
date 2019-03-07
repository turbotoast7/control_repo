node {
  file {'root/README':
  ensure => file,
  content => 'hello world',
  }
}
