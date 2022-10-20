sap-hana-config-backup
=========

This role configures HANA backup as part of `HANA-HA` stack included in the `sap-hana-ha` parent role.

Requirements
------------

Ansible version `>= 2.9.2`

Role Variables
--------------

List of variables accepted by the role are shown below

| Variable                         | Required | Default                          | Choices | Comments                                 |
|----------------------------------|----------|----------------------------------|---------|------------------------------------------|
| sap_hana_backup_partition_name   | yes      | hanabackup                       |         | HANA backup partition name               |
| sap_hana_sid                     | yes      | BG1                              |         | HANA SID                                 |

Dependencies
------------

This role is invoked in the `sap-hana-ha` parent role and can be ran independently with caution by providing the required variables in the format expected.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
        - sap-hana-backup
```

License
-------

See LICENSE file

Author Information
------------------

Bala Guduru
