# profile::users — admin accounts, keys, sudo — driven entirely from Hiera
# (data/common.yaml or per-node files), so access changes are data changes.
class profile::users (
  Hash $accounts = {},
) {
  $accounts.each |$name, $opts| {
    accounts::user { $name: * => $opts }
  }
}
