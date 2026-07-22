# role::lamp_server — a LAMP web server.
class role::lamp_server {
  include profile::base
  include profile::lamp
}
