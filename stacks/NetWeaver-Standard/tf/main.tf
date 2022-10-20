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

module "gcp_hana" {
  source                = "../../../terraform/modules/hana-scaleup"
  instance_name         = var.sap_hana_instance_name
  instance_type         = var.sap_hana_instance_type
  project_id            = var.project_id
  zone                  = var.zone
  gce_ssh_user          = var.gce_ssh_user
  gce_ssh_pub_key_file  = var.gce_ssh_pub_key_file
  service_account_email = var.sap_hana_service_account_email
  subnetwork            = var.subnetwork_hana
  subnetwork_project    = var.subnetwork_project
  source_image_family   = var.source_image_family
  source_image_project  = var.source_image_project
  boot_disk_size        = var.sap_hana_boot_disk_size
  boot_disk_type        = var.sap_hana_boot_disk_type
  additional_disk_type  = var.sap_hana_additional_disk_type
  autodelete_disk       = var.sap_hana_autodelete_boot_disk
  network_tags          = var.sap_hana_network_tags
  pd_kms_key            = var.sap_hana_pd_kms_key
  create_backup_volume  = var.sap_hana_create_backup_volume
}

module "gcp_netweaver" {
  source                = "../../../terraform/modules/nw"
  subnetwork            = var.subnetwork_nw
  subnetwork_project    = var.subnetwork_project
  source_image_family   = var.source_image_family
  source_image_project  = var.source_image_project
  autodelete_disk       = var.sap_nw_autodelete_boot_disk
  use_public_ip         = var.sap_nw_use_public_ip
  usrsap_disk_size      = var.sap_nw_usrsap_disk_size
  sapmnt_disk_size      = var.sap_nw_sapmnt_disk_size
  swap_disk_size        = var.sap_nw_swap_disk_size
  instance_name         = var.sap_nw_instance_name
  instance_type         = var.sap_nw_instance_type
  network_tags          = var.sap_nw_network_tags
  project_id            = var.project_id
  zone                  = var.zone
  boot_disk_size        = var.sap_nw_boot_disk_size
  boot_disk_type        = var.sap_nw_boot_disk_type
  additional_disk_type  = var.sap_nw_additional_disk_type
  service_account_email = var.sap_nw_service_account_email
  ssh_user              = var.gce_ssh_user
  public_key_path       = var.gce_ssh_pub_key_file
}
