# default recipe to display available commands
default:
    @just --list

# is project gg? Run lint, fmt and check
gg:
    @echo "🔍 Running lint ..."
    cargo clippy -- -D warnings
    @echo "🔍 Running cargo fmt..."
    cargo fmt -- --check
    @echo "🔍 Running cargo check..."
    cargo check
    @echo "✅ Check passed! Running cargo test..."

# run lint, fmt, check, test, and audit
ci:
    @echo "🔍 Running lint ..."
    cargo clippy -- -D warnings
    @echo "🔍 Running cargo fmt..."
    cargo fmt -- --check
    @echo "🔍 Running cargo check..."
    cargo check
    @echo "✅ Check passed! Running cargo test..."
    cargo test
    @echo "🔍 Running cargo audit..."
    cargo audit
    @echo "🧪 Tests passed! Running cargo run..."

# cargo clippy
l:
    cargo clippy

# cargo check
c:
    cargo check

# cargo test
t:
    cargo test

# cargo run
r:
    cargo run

# cargo build
b:
    cargo build

# cargo build --release
br:
    cargo build --release

# Run in release mode
rr:
    cargo run --release

# test with output
test-verbose:
    cargo test -- --nocapture

# clean build artifacts
clean:
    cargo clean

# cargo fmt
fmt:
    cargo fmt
            
# cargo fmt -- --check
fmtc:
    cargo fmt -- --check

# cargo audit - checks for vulnerabilities
audit:
    cargo audit

# cargo +nightly expand - expands macros
expand:
    cargo +nightly expand
