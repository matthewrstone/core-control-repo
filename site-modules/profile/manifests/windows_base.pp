# profile::windows_base — beginner-friendly Windows management: Chocolatey as
# the package provider plus a couple of examples to copy from.
class profile::windows_base {
  include chocolatey

  # Make Chocolatey the default package provider on this node.
  Package { provider => chocolatey }

  # Example package:
  # package { 'notepadplusplus': ensure => latest }

  # Example registry value:
  # registry_value { 'HKLM\Software\Managed\ByPuppet':
  #   ensure => present,
  #   type   => string,
  #   data   => 'true',
  # }
}
