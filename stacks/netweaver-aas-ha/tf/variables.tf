/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "The ID of the project in which the resources will be deployed."
  default     = ""
}

variable "zone" {
  description = "The zone that the instance should be created in."
  default     = ""
}

variable "region" {
  description = "Region to deploy the resources. Should be in the same region as the zone."
  default     = ""
}

variable "service_account_email" {
  description = "Email of service account to attach to the instance."
  default     = "terraform-managed-sa@albatross-duncanl-sandbox-2.iam.gserviceaccount.com"
}


# variable "instance_name" {
#   description = "A unique name for the resource, required by GCE. Changing this forces a new resource to be created."
#   default = "sap-nw"
# }

variable "aas_instance_name" {
  description = "A unique name for the resource, required by GCE. Changing this forces a new resource to be created."
  default     = ""
}

variable "instance_type" {
  description = "The GCE instance/machine type."
  default     = ""
}

variable "source_image_family" {
  description = "GCE image family."
  default     = ""
}

variable "source_image_project" {
  description = "Project name containing the linux image."
  default     = ""
}

variable "autodelete_disk" {
  description = "Whether the disk will be auto-deleted when the instance is deleted."
  default     = ""
}

variable "swap_size" {
  description = "SWAP Size"
  default     = "30"
}
variable "usr_sap_size" {
  description = "SWAP Size"
  default     = "100"
}

variable "disk_type" {
  description = "The GCE data disk type. May be set to pd-standard (for PD HDD) or pd-ssd."
  default     = "pd-standard"
}

variable "boot_disk_size" {
  description = "Root disk size in GB."
  default     = 30
}


variable "boot_disk_type" {
  description = "The GCE boot disk type. May be set to pd-standard (for PD HDD) or pd-ssd."
  default     = "pd-ssd"
}

variable "subnetwork" {
  description = "The name or self_link of the subnetwork where the isntance will be deployed. The subnetwork must exist in the same region this instance will be created in."
  default     = ""
}

variable "subnetwork_project" {
  description = "subnetwork project"
  default     = ""
}

variable "network_tags" {
  type        = list
  description = "List of network tags to attach to the instance."
  default     = []
}



variable "sap_deployment_debug" {
  description = "Debug flag for Netweaver deployment."
  default     = "false"
}

variable "public_ip" {
  description = "Determines whether a public IP address is added to your VM instance."
  default     = false
}
variable "gce_ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = ""
}

variable "gce_ssh_pub_key_file" {
  description = "Path to the public SSH key you want to bake into the instance."
  default     = "~/.ssh/id_rsa.pub"
}

variable "gce_ssh_priv_key_file" {
  description = "Path to the private SSH key, used to access the instance."
  default     = "~/.ssh/id_rsa"
}

