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

output "app_instance_name" {
  description = "Name of Netweaver instance"
  value       = module.app.instance_name
}
output "zone" {
  description = "Compute Engine instance deployment zone"
  value       = var.zone
}

output "sap_image_family" {
  value = contains([element(split("-", var.source_image_family), 0)], "rhel") ? "RedHat" : "Suse"
}

output "subnet_cidr" {
  value = data.google_compute_subnetwork.subnetwork.ip_cidr_range
}

output "app_private_ip" {
  description = "instance private IP"
  value       = module.app.instance_internal_ip
}
output "inventory" {
  value = { aas = [module.app.instance_internal_ip] }
}

