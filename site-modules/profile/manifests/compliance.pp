# profile::compliance — Security Compliance Enforcement (SCE): continuous
# CIS/DISA-STIG enforcement from Puppet's entitled Forge content
# (puppetlabs-sce_linux in the Puppetfile; your Forge API key must carry the
# entitlement for r10k to download it).
#
# Start in a non-default framework/level deliberately — review what it will
# change on a test node before rolling fleet-wide.
class profile::compliance {
  class { 'sce_linux':
    # framework => 'cis',
    # See the SCE docs for benchmark/profile/level selection and per-control
    # overrides (config: { control_configs: { ... } }).
  }
}
