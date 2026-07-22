# Puppet control repo

Scaffolded by puppet-installer with bundles: baseline, docker, lamp, security, users, windows.

## Layout

- `Puppetfile` — pinned Forge modules (r10k downloads them into `modules/`, never committed)
- `site-modules/` — YOUR code: `role::*` (one per kind of node, only profile includes) and `profile::*` (the implementation)
- `data/` + `hiera.yaml` — configuration data; the eyaml layer uses the keys the installer provisioned, so `eyaml encrypt -s 'secret'` output pastes straight in
- `manifests/site.pp` — keep the `node default {}` fail-safe; classify nodes in the console (ENC), not here

## Workflow

Every git branch is a Puppet environment (`production` branch = production env).
Push a change → r10k deploys it (the installer set up a poll timer) → agents pick
it up on their next run. Test on a feature branch first: push `mybranch`, run
an agent with `puppet agent -t --environment mybranch`, merge when green.

Assign `role::*` classes to node groups in the Puppet Core Console.

## Scaffold upgrades (no-clobber)

`.puppet-installer/manifest.json` records the hash of every generated file.
Re-running the scaffold into this directory refreshes only files you never
modified; anything you changed is preserved and the new version arrives as a
`*.new` sibling to merge by hand. Your edits are never overwritten.

## Notes

- SCE modules (sce_linux / sce_windows) are entitled Forge content: r10k
  authenticates with your Forge API key (the installer wires this). If your key
  lacks the entitlement, remove those lines from the Puppetfile.
