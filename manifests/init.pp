class nsswitch (
  $data = undef,
  $merge_hash = false,
) {

  if $data == undef {
    fail('No configuration has been supplied.')
  }

  if $merge_hash == true {
    $nsswitch_data = hiera_hash('nsswitch::data')
  } else {
    $nsswitch_data = $data
  }

  file { '/etc/nsswitch.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('nsswitch/nsswitch.conf.erb'),
  }


  if $::kernel == 'SunOS' {
    include nsswitch::solaris
  }

}
