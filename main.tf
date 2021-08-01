provider "google" {
    credentials = file("mygcp-creds.json")
    project = "terraform-319319"
    region = "us-west1"
    zone = "us-west1-c"
}

resource "google_compute_instance" "my-server"{
name = "my-gcp-server"
machine_type = "f1-micro"
boot_disk{
    initialize_params{
        image = "debian-cloud/debian-9"
    }
}
network_interface{
    network = "default"
    access_config{}
}
}
