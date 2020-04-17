# The puppetserver
class role::puppetserver {
  include ::profile::base
  include ::profile::r10k
  include ::profile::puppetserver

  # Puppet servers are currently also PuppetDB
  include ::profile::puppetdb::postgresql
  include ::profile::puppetdb::server

  # include ::profile::puppet::master
}
