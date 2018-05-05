# The puppetserver
class role::puppetserver {
  include ::profile::base
  include ::profile::r10k
  include ::profile::puppetserver

  include ::profile::puppet::master
}
