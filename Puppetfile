# Puppetfile — module pins for this control repo. r10k resolves these into
# each environment. Bump pins deliberately; every branch = an environment,
# so test bumps on a feature branch first.
forge 'https://forgeapi.puppet.com'

# --- baseline ---
# required by nearly everything
mod 'puppetlabs-stdlib', '10.0.2'
mod 'puppetlabs-motd', '8.0.0'
mod 'puppetlabs-inifile', '6.4.1'
# NTP via chrony
mod 'puppet-chrony', '5.0.0'
mod 'puppetlabs-timezone_core', '1.0.0'

# --- docker ---
mod 'puppetlabs-docker', '10.4.1'

# --- lamp ---
mod 'puppetlabs-apache', '13.3.0'
mod 'puppetlabs-mysql', '17.1.0'
mod 'puppet-php', '12.0.0'

# --- security ---
# SSH daemon/client hardening
mod 'ghoneycutt-ssh', '13.0.0'
mod 'puppetlabs-firewall', '8.5.0'
mod 'saz-sudo', '9.0.2'
# Security Compliance Enforcement (CIS/STIG) — requires an entitled Forge API key
mod 'puppetlabs-sce_linux', '1.5.1'

# --- users ---
# user accounts, SSH keys, sudo
mod 'puppetlabs-accounts', '9.0.0'

# --- windows ---
# package management for Windows
mod 'puppetlabs-chocolatey', '9.0.0'
mod 'puppetlabs-registry', '5.0.3'
# NTFS permissions
mod 'puppetlabs-acl', '5.0.3'
mod 'puppetlabs-reboot', '5.1.0'
# Security Compliance Enforcement for Windows — requires an entitled Forge API key
mod 'puppetlabs-sce_windows', '1.4.0'
