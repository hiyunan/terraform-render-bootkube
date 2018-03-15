resource "template_dir" "freeipa-manifests" {
  source_dir      = "${path.module}/resources/addons/freeipa"
  destination_dir = "${var.asset_dir}/addons-manifests"

  vars {
    IMAGE_MARINA_FREEIPA = "117.25.155.104:5000/port/marina-freeipa:latest"
#"${var.container_images["hyperkube"]}"
    IMAGE_PULL_POLICY = "Always"
    OS_DOMAIN = "${var.cluster_domain_suffix}"
  }
}
resource "template_dir" "helm-manifests" {
  source_dir      = "${path.module}/resources/addons/helm-tiller"
  destination_dir = "${var.asset_dir}/addons-manifests"

  vars {
    IMAGE_MARINA_TILLER = "117.25.155.104:5000/port/helm-tiller:latest"
#"${var.container_images["hyperkube"]}"
    IMAGE_PULL_POLICY = "Always"
    OS_DOMAIN = "${var.cluster_domain_suffix}"
  }
}


