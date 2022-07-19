# DDEV Development System for the DDB Zeitungsportal

This repository provides a [DDEV](https://ddev.readthedocs.io/)-based development environment for [ddb_kitodo_zeitungsportal](https://github.com/slub/ddb_kitodo_zeitungsportal), which integrates Kitodo.Presentation into the DDB Zeitungsportal.

## Quick Start

1. Checkout the repository
1. ddev start
1. ddev composer install
1. ddev import-db -f basic.sql
1. ddev launch

## URLs

- Backend Login: [https://sdvtypo3ddbzeitungsportaldev.slub-dresden.de/typo3/](https://sdvtypo3ddbzeitungsportaldev.slub-dresden.de/typo3/)
  - User: `admin`
  - Password: `adminslub`

## Other Commands

```bash
# Import database dump.
ddev db:import [<file.sql>]

# Cleanup database, delete sessions
ddev db:cleanup

# Export database dump
ddev db:export [<file.sql>]

# Cleanup and export
ddev db:precommit [<file.sql>]
```
