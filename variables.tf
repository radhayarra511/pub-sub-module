variable "project_id" {
  type        = string
  description = "(Required) The project ID to manage the Pub/Sub resources"
}

variable "topic_name" {
  type        = string
  description = "(Required) The Pub/Sub topic name"
}

variable "topic_labels" {
  type        = map(string)
  description = "A map of labels to assign to the Pub/Sub topic"
  default     = {}
}

variable "push_subscriptions" {
  type        = list(map(string))
  description = "The list of the push subscriptions"
  default     = []
}

variable "pull_subscriptions" {
  type = list(object({
    subscription_details    = map(string)
    subscription_labels     = map(string)
  }))
  description = "The list of the pull subscriptions and it's labels."
  default     = []
}

variable "message_storage_policy" {
  type        = map(any)
  description = "A map of storage policies. Default - inherit from organization's Resource Location Restriction policy."
  default     = {}
}

variable "schema_settings" {
  type        = map(any)
  description = "Settings for validating messages published against a schema."
  default     = null
}

variable "kms_key_name" {
  type        = string
  description = "The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic."
  default     = null
}
