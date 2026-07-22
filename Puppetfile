# Puppetfile — module pins for this control repo. r10k resolves these into
# each environment. Bump pins deliberately; every branch = an environment,
# so test bumps on a feature branch first.
forge 'https://forgeapi.puppet.com'

# --- baseline ---
# required by nearly everything
mod 'puppetlabs-stdlib', '9.6.0'
mod 'puppetlabs-motd', '7.1.0'
mod 'puppetlabs-inifile', '6.1.1'
# NTP via chrony
mod 'puppet-chrony', '3.1.0'
mod 'puppetlabs-timezone_core', '1.0.0'

# --- docker ---
mod 'puppetlabs-docker', '10.1.1'

# --- lamp ---
mod 'puppetlabs-apache', '12.3.1'
mod 'puppetlabs-mysql', '16.3.0'
mod 'puppet-php', '10.3.0'

# --- security ---
# SSH daemon/client hardening
mod 'ghoneycutt-ssh', '13.0.0'
mod 'puppetlabs-firewall', '8.1.6'
mod 'saz-sudo', '9.0.2'
# Security Compliance Enforcement (CIS/STIG) — requires an entitled Forge API key
mod 'puppetlabs-sce_linux', '1.5.1'

# --- users ---
# user accounts, SSH keys, sudo
mod 'puppetlabs-accounts', '8.3.0'

# --- windows ---
# package management for Windows
mod 'puppetlabs-chocolatey', '8.1.0'
mod 'puppetlabs-registry', '5.0.3'
# NTFS permissions
mod 'puppetlabs-acl', '5.0.3'
mod 'puppetlabs-reboot', '5.1.0'
# Security Compliance Enforcement for Windows — requires an entitled Forge API key
mod 'puppetlabs-sce_windows', '1.4.0'
