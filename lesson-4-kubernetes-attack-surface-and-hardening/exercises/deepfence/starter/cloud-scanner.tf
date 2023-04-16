provider "azurerm" {
  features {}
## edit the subscription_id eg. "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX>"
  subscription_id = "<SUBSCRIPTION_ID"
}

module "cloud-scanner_example_single-subscription" {
  source              = "deepfence/cloud-scanner/azure//examples/single-subscription"
  version             = "0.2.0"
## edit the console url eg. "XXX.XXX.XXX.XXX"
  mgmt-console-url    = "<Console URL>"
  mgmt-console-port   = "443"
## edit the deepfence-key eg. "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
  deepfence-key       = "<Deepfence-key>"
  name                = "deepfence-cloud-scanner"
}

variable "image" {
  type        = string
  default     = "quay.io/deepfenceio/cloud-scanner:1.5.0"
}
