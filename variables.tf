#
# Harbor variables
#

variable "release_name" {
  description = "The name of the Helm release."
  type        = string
  default     = "keda"
}

variable "namespace_name" {
  description = "The namespace where the Helm release will be installed."
  type        = string
  default     = "keda-system"
}

variable "chart_version" {
  description = "The version of the keda Helm chart."
  type        = string
  default     = "2.15.1"
}

#
# Walrus Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}