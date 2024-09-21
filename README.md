# Monkey Compiler (Go)

A small compiler & interpreter for the _Monkey_ programming language implemented in **Go**.

This repository contains a lexer, parser, AST, evaluator, and a simple compiler targeting a stack-based virtual machine — inspired by _The Monkey Programming Language_ (from _Writing An Interpreter In Go_ / _Writing A Compiler In Go_). The implementation focuses on readability, testability, and small, composable components.

---

## Features

- Lexer (tokenizer) for Monkey source files
- Recursive-descent parser producing an AST
- AST nodes representing expressions, statements, and program structure
- Evaluator (interpreter) for executing Monkey programs
- Simple compiler that emits bytecode for a stack VM
- REPL for interactive experimentation
- Unit tests for lexer, parser, evaluator, and compiler

---

## Requirements

- Go 1.20+ (recommended)

---

## Quick start

Clone the repo:

```bash
git clone https://github.com/BasitRaza228/monkey-lang-compiler.git
cd monkey-go
```

Build:

```bash
go build -o monkey main.go
```

Run:

./monkey [option...] filePath

```bash
# running with vm
./monkey --engine=vm examples/program.mo
# OR running with evaluator
./monkey --engine=eval examples/program.mo
# For interactive console
./monkey --console
```

---

## Project Layout

```
├── ast/
├── code/
├── compiler/              # Compiler -> bytecode emitter
├── evaluator/             # Interpreter (optional alternative to compiler)
├── lexer/                 # Tokenizer
├── parser/                # Parser -> AST
├── ast/                   # AST node definitions
├── vm/                    # Simple stack VM (bytecode executor)
├── object/                # Runtime objects (Integer, Boolean, ReturnValue, Function, Array, Hash)
├── examples/              # Example .monkey source files
├── go.mod
└── README.md
```

---

## Language overview (Mini-Monkey)

Supports:

- Integer arithmetic (`1 + 2 * 3 - 4`)
- Boolean values and comparisons (`true`, `false`, `1 < 2`)
- If/else expressions
- Return statements
- Functions (lambdas with parameters and closures)
- Let bindings (`let x = 5;`)
- Arrays and Hash literals (optional)

Example `examples/factorial.monkey`:

```monkey
let factorial = fn(n) {
  if (n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
};

factorial(5);
```

---

## REPL usage

Start the REPL:

```bash
./bin/monkey
```

You should see a prompt `>>` where you can type Monkey code. Example:

```
>> let add = fn(a, b) { a + b; };
>> add(2, 3);
5
```

---

## Implementation notes

### Lexer

- Produces a stream of `token.Token` values.
- Handles identifiers, integers, operators, punctuation, and keywords.

### Parser

- Pratt/Top-down operator precedence parser for expressions.
- Produces an `ast.Program` root node which is a list of statements.
- Includes extensive unit tests for precedence and parse tree shape.

### AST

- Node types: `Program`, `LetStatement`, `ReturnStatement`, `ExpressionStatement`, `IfExpression`, `FunctionLiteral`, `CallExpression`, etc.
- Each node implements `String()` for easy debugging.

### Evaluator

- Implements dynamic evaluation of AST nodes against an `object.Environment`.
- Supports closures by capturing environment references in `object.Function`.
- Includes built-in functions (e.g., `len`, `puts`) implemented in `object/builtins.go`.

### Compiler & VM

- Compiler emits bytecode (instructions + constants pool).
- VM executes instructions using a stack machine model.
- Compiler unit tests compare emitted bytecode+VM results with expected outputs.

---

## Examples

`examples/closure.monkey`:

```monkey
let newAdder = fn(x) {
  fn(y) { x + y };
};

let addTwo = newAdder(2);
addTwo(3); # => 5
```

---

## Testing & Debugging

- Unit tests live next to packages (e.g., `lexer/lexer_test.go`, `parser/parser_test.go`).
- Use `go test ./... -v` to run everything.
- For debugging compiler/VM, bridge tests assert both emitted bytecode and VM outputs.

---

## Contributing

Contributions are welcome! Please follow these guidelines:

1. Open an issue for bugs or feature requests.
2. Create a topic branch for your changes.
3. Add tests for new features or bug fixes.
4. Submit a pull request with a clear description of changes.

---

## References

- _Writing An Interpreter In Go_ — Thorsten Ball
- _Writing A Compiler In Go_ — Thorsten Ball

---

## License

This project is licensed under the MIT License. See `LICENSE` for details.
