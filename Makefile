VERSION?=$(shell cat VERSION)
BUILD_TOOL?=nerdctl

image:
	$(BUILD_TOOL) build -t agilesyndrome/capture-the-flag:$(VERSION) .

publish:
	$(BUILD_TOOL) push agilesyndrome/capture-the-flag:$(VERSION)
