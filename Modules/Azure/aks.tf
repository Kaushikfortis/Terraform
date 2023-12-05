resource "azurerm_kubernetes_cluster" "main" {

name = "hbl-azure-ci-dsapayout-${var.env)-${var.name}"

location = var.location

resource_group_name var.resource_group_name

disk_encryption_set_id = var.disk_encryption_set_id

azure_active_directory_role_based_access_control {

managed = true

admin_group_object_ids = ["a9feebad-bbf7-4688-989f-61ca8246f5c7"]

azure_rbac_enabled = true

}

default_node_pool {

name = "default"

node_count = var.default_node_pool_node_count

vn size = var.node_pool_vm_size

enable_auto_scaling = true

enable_host_encryption var.enable_host_encryption

enable_node_public_ip = false

kubelet_disk_type = "os"

min_count = 1

max_count = 3

max_pods = 30

orchestrator_version="1.25.6"

os_disk_size_gb = 128

temporary_name_for_rotation = "tempnodepool"

type = "Virtual MachineScalesets"

vnet subnet_id = var.node_pool_vnet_subnet_id zones ["1","2","3"]
}
