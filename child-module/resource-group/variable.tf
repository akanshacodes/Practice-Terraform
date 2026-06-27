variable "resource_groups" {
    description = "A list of resource groups to create"
    type = map(object({
        name     = string
        location = string
    }))
}