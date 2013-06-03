class people::sahilm {
  include sudo
  $home = "/Users/${::luser}"

  sudoers { 'NAME':
    users => "${::luser}",
    commands => 'ALL=(ALL) NOPASSWD: ALL',
    hosts => 'ALL',
    ensure => present,
    type => 'user_spec'
  }
}