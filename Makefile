BUNDLE := /opt/homebrew/opt/ruby/bin/bundle

serve:
	$(BUNDLE) exec jekyll serve --livereload

build:
	$(BUNDLE) exec jekyll build

install:
	$(BUNDLE) install
