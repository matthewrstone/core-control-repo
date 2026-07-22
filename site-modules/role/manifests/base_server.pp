# role::base_server — the default server role: exactly the baseline.
# Roles contain ONLY profile includes; a node gets exactly one role.
class role::base_server {
  include profile::base
}
