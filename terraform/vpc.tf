#resource "yandex_vpc_network" "app-network" {
#  name = "app-network"
#}

resource "yandex_vpc_subnet" "app-subnet" {
  name           = "reddit-app-subnet"
  zone           = "ru-central1-a"
  network_id     = "enph3a3rjn6295q6sk5j"
  v4_cidr_blocks = ["192.168.10.0/24"]
}
