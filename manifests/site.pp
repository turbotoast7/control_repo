node default {
  file {'/root/README':
    ensure  => file,
    content => 'hello world',
    owner   => 'root',
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
