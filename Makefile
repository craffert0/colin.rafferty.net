.PHONY: all

CSS := https://cdn.simplecss.org/simple.min.css

MARKDOWNS := */*/*.md
HTMLS := $(patsubst %.md,%.html,$(MARKDOWNS))

all: $(HTMLS)

# https://brettterpstra.com/projects/apex/
%.html: %.md
	apex $< --standalone --title-from-h1 --no-image-captions --css $(CSS) -o $@
