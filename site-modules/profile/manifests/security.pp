# profile::security — pragmatic hardening: SSH, host firewall, sudo hygiene.
class profile::security {
  class { 'ssh':
    permit_root_login                 => 'no',
    password_authentication           => 'no',
    challenge_response_authentication => 'no',
  }

  class { 'firewall': }
  # Baseline policy: allow established + SSH, drop the rest. Extend with your
  # service ports in service-specific profiles.
  firewall { '000 accept established':
    proto  => 'all',
    state  => ['RELATED', 'ESTABLISHED'],
    jump   => 'accept',
  }
  firewall { '010 accept ssh':
    dport => 22,
    proto => 'tcp',
    jump  => 'accept',
  }
  firewallchain { 'INPUT:filter:IPv4':
    ensure => present,
    policy => 'drop',
    purge  => false,
  }

  class { 'sudo': purge => false }
}
