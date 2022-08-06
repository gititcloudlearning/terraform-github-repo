resource "github_repository" "repo" {
  name               = "${var.repo_name}"
  description        = "${var.description}"
  visibility         = "public"
  has_issues         = true
  has_wiki           = true
  auto_init          = true
}

resource "github_branch" "staging" {
  repository = github_repository.repo.name
  branch     = "staging"
}

#Set default branch 'staging'
resource "github_branch_default" "staging" {
  repository = github_repository.repo.name
  branch     = "staging"
}
