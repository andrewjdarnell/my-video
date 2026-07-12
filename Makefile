# Makefile for HyperFrames Video Composition Project

# Variables
CLI = npx --yes hyperframes@0.7.54
DEFAULT_FRAMES = 9

.PHONY: help setup dev check lint validate snapshot render publish clean

# Default target
help:
	@echo "========================================================================"
	@echo "                 HyperFrames Project Build Tool"
	@echo "========================================================================"
	@echo "Available commands:"
	@echo "  make setup        - Install node dependencies (if package.json changes)"
	@echo "  make dev          - Start the development preview server (Studio)"
	@echo "  make check        - Run all static checks (lint, runtime, layout, contrast)"
	@echo "  make lint         - Run HyperFrames linter with verbose output"
	@echo "  make validate     - Validate runtime errors and accessibility contrast"
	@echo "  make snapshot     - Generate visual snapshots (default: $(DEFAULT_FRAMES) frames)"
	@echo "                      Override: make snapshot AT=0.5,1.86,5.0"
	@echo "  make render       - Render composition to high-quality video"
	@echo "                      Override: make render OUT=final.mp4 QUALITY=high"
	@echo "  make publish      - Publish composition and get a shareable web link"
	@echo "  make clean        - Clean up caches, snapshots, and local renders"
	@echo "========================================================================"

# Setup dependencies
setup:
	npm install

# Start Studio local dev server
dev:
	npm run dev

# Full checks (lint + runtime + layout + motion + contrast)
check:
	npm run check

# Verbose linting
lint:
	$(CLI) lint --verbose

# Runtime and accessibility validation
validate:
	$(CLI) validate

# Visual snapshots for smoke testing sub-compositions
snapshot:
ifdef AT
	$(CLI) snapshot --at $(AT)
else
	$(CLI) snapshot --frames $(DEFAULT_FRAMES)
endif

# Render composition to video
# Usage:
#   make render
#   make render OUT=my-video.mp4
#   make render QUALITY=draft
render:
ifdef OUT
	$(CLI) render --quality $(if $(QUALITY),$(QUALITY),high) --output $(OUT)
else
ifdef QUALITY
	$(CLI) render --quality $(QUALITY)
else
	npm run render
endif
endif

# Publish to sharing server
publish:
	npm run publish

# Clean caches and generated outputs
clean:
	rm -rf .hyperframes .thumbnails snapshots renders
	@echo "Clean completed."
