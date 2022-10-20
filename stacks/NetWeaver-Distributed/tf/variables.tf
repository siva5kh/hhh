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
}

variable "zone" {
  description = "The zone that the instance should be created in."
}

variable "sap_hana_instance_name" {
  description = "A unique name for the HANA instance. Changing this forces a new resource to be created."
}

variable "sap_pas_instance_name" {
  description = "A unique name for the PAS instance. Changing this forces a new resource to be created."
}

variable "sap_ascs_instance_name" {
  description = "A unique name for the ASCS instance. Changing this forces a new resource to be created."
}

variable "sap_hana_instance_type" {
  description = "The GCE instance/machine type."
}

variable "sap_nw_instance_type" {
  description = "The GCE instance/machine type."
}

variable "source_image_family" {
  description = "GCE image family."
}

variable "source_image_project" {
  description = "Project name containing the linux image."
}

variable "sap_hana_autodelete_boot_disk" {
  description = "Whether the disk will be auto-deleted when the instance is deleted."
}

variable "sap_nw_autodelete_boot_disk" {
  description = "Whether the disk will be auto-deleted when the instance is deleted."
}

variable "sap_nw_usrsap_disk_size" {
  description = "USR SAP size"
}

variable "sap_nw_sapmnt_disk_size" {
  description = "SAP mount size"
}

variable "sap_nw_swap_disk_size" {
  description = "SWAP Size"
}

variable "sap_hana_boot_disk_size" {
  description = "The GCE data disk type. May be set to pd-standard (for PD HDD) or pd-ssd."
}

variable "sap_hana_boot_disk_type" {
  description = "The GCE data disk type. May be set to pd-standard (for PD HDD) or pd-ssd."
}

variable "sap_hana_additional_disk_type" {
  description = "The GCE additional disk type for HANA. Set to pd-ssd (for PD SSD)."
}

variable "sap_hana_pd_kms_key" {
  description = "Customer managed encryption key to use in persistent disks. If none provided, a Google managed key will be used.."
}

variable "sap_hana_create_backup_volume" {
  description = "Create backup SAP volume"
}

variable "sap_nw_boot_disk_size" {
  description = "Root disk size in GB."
}

variable "sap_nw_additional_disk_type" {
  description = "The GCE boot disk type. May be set to pd-standard (for PD HDD) or pd-ssd."
}

variable "sap_nw_boot_disk_type" {
  description = "The GCE boot disk type. May be set to pd-standard (for PD HDD) or pd-ssd."
}

variable "sap_hana_service_account_email" {
}

variable "sap_nw_service_account_email" {
}

variable "subnetwork_nw" {
  description = "The name or self_link of the nw subnetwork where the isntance will be deployed. The subnetwork must exist in the same region this instance will be created in."
  default     = "app2"
}

variable "subnetwork_hana" {
  description = "The name or self_link of the hana subnetwork where the isntance will be deployed. The subnetwork must exist in the same region this instance will be created in."
  default     = "app2"
}

variable "subnetwork_project" {
  description = "The name or self_link of the subnetwork project where the isntance will be deployed. The subnetwork must exist in the same region this instance will be created in."
  default     = ""
}

variable "sap_hana_network_tags" {
  type        = list
  description = "List of network tags to attach to the instance."
  default     = []
}

variable "sap_nw_network_tags" {
  type        = list
  description = "List of network tags to attach to the instance."
  default     = []
}

variable "sap_nw_use_public_ip" {
  description = "Determines whether a public IP address is added to your VM instance."
}

variable "gce_ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = "sushma"
}

variable "gce_ssh_pub_key_file" {
  description = "Path to the public SSH key you want to bake into the instance."
}
