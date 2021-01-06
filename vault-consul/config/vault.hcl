ui = true

api_addr = "http://0.0.0.0:8200"
disable_clustering = true

log_level = "ERROR"

storage "consul" {
    address = "consul:8500"
    path = "vault/"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_cert_file = "/certs/vault.pem"
  tls_key_file = "/certs/vault-key.pem"
}
