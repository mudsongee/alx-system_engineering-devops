file_line { 'increase_hard_file_limit_for_holberton_user':
  path  => '/etc/security/limits.conf',
  line  => 'holberton hard nofile 50000',
}

file_line { 'increase_soft_file_limit_for_holberton_user':
  path  => '/etc/security/limits.conf',
  line  => 'holberton soft nofile 50000',
}

