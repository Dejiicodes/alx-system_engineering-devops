# Installs flask, version 2.1.0

package { 'python3-pip':
  ensure => installed,
}

package { 'Flask':
  ensure => '2.1.0',
  provider => 'pip3',
  require => Package['python3-pip'],
}

package { 'Werkzeug':
  ensure => '2.1.1',
  provider => 'pip3',
  require => Package['python3-pip'],
}
