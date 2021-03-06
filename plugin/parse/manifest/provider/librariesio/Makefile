PACKAGE = github.com/hackebrot/go-librariesio
COVER_FILE = coverage.out

.DEFAULT_GOAL := help

.PHONY: install
install: ## Install library
	@echo "+ $@"
	@go install $(PACKAGE)/librariesio


.PHONY: cmd
cmd: ## Install application binaries
	@echo "+ $@"
	@go install $(PACKAGE)/...


.PHONY: doc
doc: ## Generate documentation
	@echo "+ $@"
	@godoc $(PACKAGE)/librariesio


.PHONY: vet
vet: ## Run the go vet cmd on the package
	@echo "+ $@"
	@go vet $(PACKAGE)/librariesio



.PHONY: test
test: ## Run unit tests
	@echo "+ $@"
	@go test -v $(PACKAGE)/...


.PHONY: coverage
coverage: ## Measure code coverage
	@echo "+ $@"
	@go test -cover $(PACKAGE)/librariesio


.PHONY: coverage-report
coverage-report: ## Generate code coverage report
	@echo "+ $@"
	@go test -v -coverprofile $(COVER_FILE) $(PACKAGE)/librariesio
	@go tool cover -html $(COVER_FILE)


.PHONY: clean
clean: ## Remove any artifact files
	@echo "+ $@"
	@rm $(COVER_FILE)


.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
