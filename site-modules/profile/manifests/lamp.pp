# profile::lamp — Apache + MySQL + PHP on one box (classic homelab web stack).
class profile::lamp (
  String $mysql_root_password = 'changeme-via-eyaml',
) {
  class { 'apache':
    mpm_module => 'prefork',
  }
  include apache::mod::php

  class { 'mysql::server':
    root_password           => $mysql_root_password,
    remove_default_accounts => true,
  }

  class { 'php':
    integrations => { 'mysql' => {} },
  }
}
