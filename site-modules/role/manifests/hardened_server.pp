# role::hardened_server — baseline + hardening + compliance enforcement.
class role::hardened_server {
  include profile::base
  include profile::security
  include profile::compliance
}
