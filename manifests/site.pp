# site.pp — entrypoint for every catalog.
#
# Classification comes from the Puppet Core Console (the ENC): assign
# role::/profile:: classes to node groups there. This default node is the
# documented fail-safe — if the console is ever unreachable, unclassified
# nodes still compile an (empty but valid) catalog instead of failing runs.
node default {
  # Intentionally minimal. Put fleet-wide, always-on code in profile::base and
  # assign it via the console instead of growing this block.
}
