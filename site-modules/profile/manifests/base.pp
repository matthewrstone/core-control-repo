# profile::base — fleet-wide baseline every node should carry.
# Assign via role::base_server (or directly) in the console.
class profile::base (
  String $timezone      = 'UTC',
  String $motd_template = "Managed by Puppet\n",
) {
  class { 'timezone': timezone => $timezone }
  class { 'chrony': }
  class { 'motd': content => $motd_template }
}
