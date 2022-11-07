resource "azuredevops_environment" "envs" {
  for_each = var.environments
  project_id   = data.azuredevops_project.project[each.value.project_key].id
  name         = each.value.name
  description  = try(each.value.description, null)
}
