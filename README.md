# rust-cargo-runner

This is a Rust 1.15 runner that:
- builds the project once using `cargo build` (i.e. fetches dependencies and compiles initial source files)
- executes tests thanks to the `cargo test` command.

## How to Use

In order to use this runner for your project, edit the `codingame.yml` file and add the following lines to your project:

```yaml
    runner:
      name: codingame/rust-cargo-runner
      version: 1.0-rust-1.15
```

## Example

In this example, the user is asked to write the function `to_upper` (file `uppercase.rs`):

```rust
pub fn to_upper(string: &str) -> String {
    return string.to_uppercase();
}
```

In order to test the answer, the following unit test is created (file `string_tests.rs`):

```rust
#[test]
pub fn test_to_upper() {
    use uppercase;
    let expected = "FOO";
    let actual = uppercase::to_upper("foO");
    assert_eq!(expected, actual);
}
```

and the file `lib.rs`:

```rust
pub mod string_tests;
pub mod uppercase;
```

In the markdown file, the unit test can be called using:

```markdown
@[Test uppercase]({"stubs":["uppercase.rs"], "command":"string_tests::test_to_upper"})
```
