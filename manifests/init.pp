# == Class: reset_apt
#
# Clears the downloaded package list generated by apt-get
# (apt-get cache) and downloads a fresh package list.
# This ensures the package manager is using the most
# up to date packages from the repositories.
#
# Note, only clears the cache on the first run.
#
# === Paramaters
#
# [*use_nz_source*] true if use nz sources and false otherwise
# None
#
# === Examples
#
# include reset_apt
#
# === Copyright
#
# GPLv3
#
class reset_apt (
  $use_nz_sources = false,
  ){
    
  class{'reset_apt::sources':} ->
  class{'reset_apt::clean':}
    
}