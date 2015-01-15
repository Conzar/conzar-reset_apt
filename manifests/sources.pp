# == Class: reset_apt::sources
#
# Adds new zealand sources.
#
class reset_apt::sources {
  if $reset_apt::use_nz_sources {
    file{'/etc/apt/sources.list':
      ensure => file,
      source => 'puppet:///modules/reset_apt/nz_sources.list' ,
    }
  }
}