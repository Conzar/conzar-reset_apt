# == Class: reset_apt::clean
#
# Cleans the local apt cache.
#
class reset_apt::clean {
  include check_run

  check_run::task { 'remove_lists':
    exec_command => '/bin/rm -rf /var/lib/apt/lists/*',
  } ->
  check_run::task { 'do_apt_clean':
    exec_command => '/usr/bin/apt-get clean',
    require      => Check_run::Task['remove_lists'],
  } ->
  check_run::task { 'do_apt_update':
    exec_command => '/usr/bin/apt-get update',
    require      => Check_run::Task['do_apt_clean'],
  }
}