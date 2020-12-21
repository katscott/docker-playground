ui = true

api_addr = "http://0.0.0.0:8200"
disable_clustering = true

storage "consul" {
    address = "consul:8500"
    path = "vault/"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
//   tls_disable = 1
  tls_cert_file = "/certs/localhost.pem"
  tls_key_file = "/certs/localhost-key.pem"
}
