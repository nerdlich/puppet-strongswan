# == Class: strongswan::service
#
# Manages the StrongSwan daemon, ensuring that its running.
#
# === Authors
#
# Matt Wise <matt@nextdoor.com>
#
class strongswan::service (
  $service = $strongswan::env::service_name,
  $ensure  = $strongswan::env::service_ensure,
  $enable  = $strongswan::env::service_enable,
) inherits strongswan::env {
  service { 'strongswan':
    ensure  => $ensure,
    enable  => $enable,
    status  => '/usr/sbin/ipsec status',
    restart => '/usr/sbin/ipsec restart',
  }
}
