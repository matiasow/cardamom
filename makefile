.PHONY: test

test:
	@echo Running tests... && \
	RUBYLIB=./lib cutest test/**/*_test.rb

console:
	@echo Running tests... && \
	RUBYLIB=./lib irb
