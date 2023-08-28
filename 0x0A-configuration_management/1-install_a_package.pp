# install flask package.
# ensure it is of version 2.1.0

package {'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
