# dev

#### Table of Contents

1. [Description](#description)
1. [Setup](#setup)
    * [What dev affects](#what-dev-affects)
    * [Setup requirements](#setup-requirements)
1. [Usage](#usage)
1. [Limitations](#limitations)
1. [Development](#development)

## Description

This module installs development tools on Muppets. I use it mostly with my Mac, Raspberry Pis,
and Vagrant / VirtualBox Ubuntu instances and Docker containers.

## Setup

### Setup requirements

Puppet 4.x must already be installed for *base* to work. Extra Puppet
module requirements are defined in _metadata.json_ and _Puppetfile_, so
`librarian-puppet` should be used to ensure all module dependencies are
resolved.

## Usage

Configuration is managed by Hiera, using the data files under _data_
and the hierarchy defined in _hiera.yaml_.

If new packages are required they should be added to
`dev::packages::install` - in _common.yaml_ if the package name is
generic, or in the appropriate YAML file for specific OSes or platforms.

To exclude packages for some platforms, add those package names to
`dev::packages::uninstall` in the appropriate YAML file.

## Limitations

*dev* has been tested on Debian Jessie, Ubuntu Trusty, and macOS
Sierra; basic testing has also been done on the other OSes.

## Development

Submit issues / merge requests on
[github.com](https://github.com/scottylogan/muppet-dev/).





