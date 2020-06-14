# ::role::allinone

# This is used by circle (bardicgrove.org primary host) It's an all in one
# profile as we only run one system
#
# In truth I would prefer to separate services, but the cost involved in that
# would make the wife very unhappy, so it's a single all in one system :(
class role::allinone {
  include ::profile::base

  # we act as an acme client
  include ::profile::acme

  # We do MTA services
  include ::profile::maildir
  include ::profile::postfix
  include ::profile::dovecot
}
