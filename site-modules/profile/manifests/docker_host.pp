# profile::docker_host — container host management.
class profile::docker_host {
  class { 'docker':
    # log_driver => 'json-file',
  }
}
