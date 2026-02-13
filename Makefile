.PHONY: all

MARKDOWNS := */*/*.md
HTMLS := $(patsubst %.md,%.html,$(MARKDOWNS))

all: $(HTMLS)

%.html: %.md
	@echo update $<
