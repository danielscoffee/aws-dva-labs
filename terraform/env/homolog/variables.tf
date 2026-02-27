variable "github_org" {
  default = "danielscoffee"
  type    = string
}

variable "github_repo" {
  default = "aws-dva-labs"
  type    = string
}

variable "github_ref" {
  type    = string
  default = "refs/heads/main"
}

variable "thumbprints" {
  type    = list(string)
  default = []
}
