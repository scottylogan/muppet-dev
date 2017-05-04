# == Class: dev::packages
#
# Generic package installation for a development Muppet
#
# === Authors
#
# Scotty Logan <swl@scottylogan.com>
#
class dev::packages (
  $install,
  $uninstall,
  $package_type,
){

  include stdlib

  Package { provider => $package_type }

  $only_install = difference($install, $uninstall)

  $installing = join($only_install, ' ')
  $uninstalling = join($uninstall, ' ')

  ensure_packages($only_install, { ensure => present })
  ensure_packages($uninstall, { ensure => absent })

}
