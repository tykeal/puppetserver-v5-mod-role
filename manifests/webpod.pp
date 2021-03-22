# ::role::webpod
#
# This role is designed with a managed nginx for ease of integration with the
# puppet managed acme certs.
class role::webpod {
  include ::profile::base

  # we act as an acme client
  include ::profile::acme

  # We do web services
  include ::profile::web::nginx

  # We do containers
  include ::profile::podman
}
