# =============================================================================
# AI-Assisted Engineering Project Blueprint
# Global / Generic Makefile
# =============================================================================
#
# Purpose
# -------
# This Makefile provides a small, predictable command interface for common
# repository-level engineering activities.
#
# The Makefile is intentionally GENERIC.
#
# It does not contain commands for a specific application, product, cloud
# platform, deployment target, AI framework, database or programming project.
#
# Repository-level responsibilities include:
#
#   - Environment preparation
#   - Dependency installation
#   - Repository inspection
#   - Documentation generation
#   - Validation
#   - Testing
#   - Cleanup
#
# Project-specific build or deployment commands should live inside the
# corresponding project directory rather than being added here.
#
# =============================================================================
# Requirements
# =============================================================================
#
# Expected tools:
#
#   Python 3.11+
#   pip
#   Git
#   Make
#
# Optional:
#
#   MkDocs
#
# The Makefile assumes a Python virtual environment named `.venv`.
#
# Create it with:
#
#   make venv
#
# Install dependencies with:
#
#   make install
#
# =============================================================================

# -----------------------------------------------------------------------------
# Shell Configuration
# -----------------------------------------------------------------------------

SHELL := /bin/bash

# Prevent make from creating intermediate files unnecessarily.
MAKEFLAGS += --no-builtin-rules

# Python executable used by repository commands.
PYTHON := python

# Pip is invoked through Python so that the active environment is respected.
PIP := $(PYTHON) -m pip

# Virtual environment directory.
VENV := .venv

# Platform-independent virtual environment Python path.
VENV_UNIX_PYTHON := $(VENV)/bin/python
VENV_WINDOWS_PYTHON := $(VENV)/Scripts/python.exe


# -----------------------------------------------------------------------------
# Repository Configuration
# -----------------------------------------------------------------------------

PROJECT_NAME := ai-assisted-engg-project-blueprint

REQUIREMENTS := requirements.txt

DOCS_SOURCE := docs
DOCS_BUILD := site

# Default documentation command.
MKDOCS := mkdocs


# =============================================================================
# Default Target
# =============================================================================

.DEFAULT_GOAL := help


# =============================================================================
# Help
# =============================================================================
#
# `make` or `make help` displays the supported repository commands.
#
# =============================================================================

.PHONY: help

help:
	@echo ""
	@echo "==============================================================="
	@echo " $(PROJECT_NAME)"
	@echo " Repository Commands"
	@echo "==============================================================="
	@echo ""
	@echo "Environment"
	@echo "  make venv          Create the Python virtual environment"
	@echo "  make install       Install global Python dependencies"
	@echo "  make upgrade       Upgrade pip and global dependencies"
	@echo ""
	@echo "Validation"
	@echo "  make validate      Run repository validation checks"
	@echo "  make test          Run available automated tests"
	@echo ""
	@echo "Documentation"
	@echo "  make docs          Build documentation"
	@echo "  make docs-serve    Serve documentation locally"
	@echo ""
	@echo "Inspection"
	@echo "  make status        Show Git repository status"
	@echo "  make tree          Show repository structure"
	@echo ""
	@echo "Maintenance"
	@echo "  make clean         Remove generated artefacts and caches"
	@echo "  make clean-venv    Remove the Python virtual environment"
	@echo ""
	@echo "Information"
	@echo "  make info          Display repository/tool information"
	@echo ""
	@echo "==============================================================="
	@echo ""


# =============================================================================
# Environment
# =============================================================================

.PHONY: venv

venv:
	@echo "Creating Python virtual environment..."
	$(PYTHON) -m venv $(VENV)
	@echo ""
	@echo "Virtual environment created: $(VENV)"
	@echo ""
	@echo "Activate it with:"
	@echo "  Git Bash : source $(VENV)/Scripts/activate"
	@echo "  Linux    : source $(VENV)/bin/activate"
	@echo ""


.PHONY: install

install:
	@echo "Installing global Python dependencies..."
	$(PIP) install --upgrade pip
	$(PIP) install -r $(REQUIREMENTS)
	@echo ""
	@echo "Global dependencies installed."


.PHONY: upgrade

upgrade:
	@echo "Upgrading global Python dependencies..."
	$(PIP) install --upgrade pip
	$(PIP) install --upgrade -r $(REQUIREMENTS)
	@echo ""
	@echo "Global dependencies upgraded."


# =============================================================================
# Validation
# =============================================================================
#
# Validation should remain lightweight at the repository level.
#
# Individual projects may introduce more specialised validation commands.
#
# =============================================================================

.PHONY: validate

validate:
	@echo "Running repository validation..."
	@echo ""
	@echo "[1/4] Checking Git repository..."
	@git status --short
	@echo ""
	@echo "[2/4] Checking Python..."
	@$(PYTHON) --version
	@echo ""
	@echo "[3/4] Checking requirements file..."
	@test -f $(REQUIREMENTS) && echo "requirements.txt: OK" || \
		(echo "requirements.txt: MISSING" && exit 1)
	@echo ""
	@echo "[4/4] Checking repository README..."
	@test -f README.md && echo "README.md: OK" || \
		(echo "README.md: MISSING" && exit 1)
	@echo ""
	@echo "Repository validation completed."


# =============================================================================
# Testing
# =============================================================================
#
# The root repository may not contain executable tests yet.
#
# This target intentionally detects whether pytest is available and whether a
# tests/ directory exists rather than assuming a particular test framework.
#
# =============================================================================

.PHONY: test

test:
	@echo "Running repository tests..."
	@if [ -d tests ]; then \
		if $(PYTHON) -c "import pytest" >/dev/null 2>&1; then \
			$(PYTHON) -m pytest; \
		else \
			echo "pytest is not installed."; \
			echo "Install it in the relevant project environment."; \
			exit 1; \
		fi \
	else \
		echo "No root-level tests/ directory found."; \
		echo "No repository-level tests to execute."; \
	fi


# =============================================================================
# Documentation
# =============================================================================

.PHONY: docs

docs:
	@echo "Building documentation..."
	@if command -v $(MKDOCS) >/dev/null 2>&1; then \
		$(MKDOCS) build; \
	else \
		echo "mkdocs is not available."; \
		echo "Run: make install"; \
		exit 1; \
	fi
	@echo ""
	@echo "Documentation build completed."


.PHONY: docs-serve

docs-serve:
	@echo "Starting local documentation server..."
	@if command -v $(MKDOCS) >/dev/null 2>&1; then \
		$(MKDOCS) serve; \
	else \
		echo "mkdocs is not available."; \
		echo "Run: make install"; \
		exit 1; \
	fi


# =============================================================================
# Repository Inspection
# =============================================================================

.PHONY: status

status:
	@echo ""
	@echo "Git Repository Status"
	@echo "====================="
	@git status


.PHONY: tree

tree:
	@echo ""
	@echo "Repository Structure"
	@echo "===================="
	@if command -v tree >/dev/null 2>&1; then \
		tree -I '.git|.venv|__pycache__|site|build|dist'; \
	else \
		echo "'tree' command is not available."; \
		echo "Use 'find .' or install tree for a structured view."; \
	fi


# =============================================================================
# Information
# =============================================================================

.PHONY: info

info:
	@echo ""
	@echo "==============================================================="
	@echo " $(PROJECT_NAME)"
	@echo "==============================================================="
	@echo ""
	@echo "Python:"
	@$(PYTHON) --version 2>/dev/null || echo "Not available"
	@echo ""
	@echo "Git:"
	@git --version 2>/dev/null || echo "Not available"
	@echo ""
	@echo "Make:"
	@make --version 2>/dev/null | head -n 1 || echo "Not available"
	@echo ""
	@echo "Virtual Environment:"
	@if [ -d "$(VENV)" ]; then \
		echo "$(VENV): present"; \
	else \
		echo "$(VENV): not present"; \
	fi
	@echo ""
	@echo "Requirements:"
	@if [ -f "$(REQUIREMENTS)" ]; then \
		echo "$(REQUIREMENTS): present"; \
	else \
		echo "$(REQUIREMENTS): not present"; \
	fi
	@echo ""
	@echo "==============================================================="


# =============================================================================
# Cleanup
# =============================================================================
#
# `clean` removes generated artefacts only.
#
# It MUST NOT remove source documents, source code, Git metadata, configuration
# or other tracked repository content.
#
# =============================================================================

.PHONY: clean

clean:
	@echo "Cleaning generated artefacts..."
	@rm -rf \
		__pycache__ \
		.pytest_cache \
		.mypy_cache \
		.ruff_cache \
		.coverage \
		htmlcov \
		site \
		build \
		dist \
		*.egg-info
	@echo "Generated artefacts removed."


.PHONY: clean-venv

clean-venv:
	@echo "Removing Python virtual environment..."
	@rm -rf $(VENV)
	@echo ""
	@echo "Virtual environment removed."


# =============================================================================
# Composite Commands
# =============================================================================
#
# These targets provide convenient workflows while keeping the individual
# commands independently usable.
#
# =============================================================================

.PHONY: setup

setup: venv
	@echo ""
	@echo "Installing repository dependencies..."
	@$(VENV_UNIX_PYTHON) -m pip install --upgrade pip
	@$(VENV_UNIX_PYTHON) -m pip install -r $(REQUIREMENTS)
	@echo ""
	@echo "Repository setup completed."


.PHONY: check

check: validate test
	@echo ""
	@echo "All repository checks completed."


.PHONY: all

all: validate docs
	@echo ""
	@echo "Repository build workflow completed."


# =============================================================================
# Maintenance Notes
# =============================================================================
#
# 1. Keep this Makefile generic.
#
# 2. Do not add commands that belong exclusively to one project.
#
# 3. Prefer adding a new target only when the command represents a recurring
#    repository-level activity.
#
# 4. Keep target names short, predictable and self-explanatory.
#
# 5. Update `make help` whenever a new public target is introduced.
#
# 6. Avoid destructive operations in normal targets.
#
# 7. `make clean` must only remove generated artefacts.
#
# 8. Project-specific Makefiles may extend these conventions without modifying
#    the global repository workflow.
#
# =============================================================================
# End of File
# =============================================================================

