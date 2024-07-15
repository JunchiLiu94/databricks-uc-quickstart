resource "time_sleep" "wait" {
  create_duration = "20s"
}

resource "databricks_grants" "this" {
#   for_each = var.permissions
  catalog = var.catalog_name
  grant {
    principal  = var.group_1_name
    privileges = var.permissions["group_1"]
  }
    grant {
    principal  = var.group_2_name
    privileges = var.permissions["group_2"]
    }
    grant {
    principal  = var.group_3_name
    privileges = var.permissions["group_3"]
    }
}

