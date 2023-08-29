#Script to automate Redirection “301 Moved Permanent

package {'nginx':
    ensure => installed,
}

file_line {'install':
    ensure => present,
    path   => '/etc/nginx/sites-enabled/default',
    after  => 'listen 80 default_server;',
    line   => 'rewrite ^\/redirect_me https://youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file {'/var/www/html/redirect_me':
    ensure  => 'file',
    content => '',
}

service {'nginx':
    ensure  => running,
    require => Package['nginx'],
}

