
.PHONY: lint
lint:
	cargo check
	cargo clippy -- -D warnings
	cargo fmt

.PHONY: test
test: lint
	cargo test

.PHONY: setup
setup:
	rustup component add clippy
	rustup component add rustfmt
