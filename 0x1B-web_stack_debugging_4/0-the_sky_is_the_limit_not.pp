file_line { 'increase_ulimit':
  path  => '/etc/default/nginx',
  line  => 'ULIMIT=4096',
  match => 'ULIMIT=15',
}

exec { 'nginx-restart':
  command => '/etc/init.d/nginx restart',
  path    => '/usr/local/bin/:/bin/:/usr/sbin/',
  require => File_line['increase_ulimit'],
}

