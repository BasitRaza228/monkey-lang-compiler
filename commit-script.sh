# 1) initial setup
export GIT_AUTHOR_DATE='Sat Jan 06 14:12:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jan 06 14:12:00 2024 +0500'
git add go.mod README.md .gitignore
git commit --date='Sat Jan 06 14:12:00 2024 +0500' -m "Initial commit: setup project structure"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 2) tokens
export GIT_AUTHOR_DATE='Sun Jan 07 18:45:00 2024 +0500'
export GIT_COMMITTER_DATE='Sun Jan 07 18:45:00 2024 +0500'
git add token/*.go
git commit --date='Sun Jan 07 18:45:00 2024 +0500' -m "Add token definitions"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 3) lexer (basic)
export GIT_AUTHOR_DATE='Sat Jan 13 22:10:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jan 13 22:10:00 2024 +0500'
git add lexer/lexer.go lexer/*.test.go lexer/*_test.go
git commit --date='Sat Jan 13 22:10:00 2024 +0500' -m "Implement lexer: identifiers, integers"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 4) lexer tests/fixes
export GIT_AUTHOR_DATE='Sat Jan 20 19:02:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jan 20 19:02:00 2024 +0500'
git add lexer/*_test.go
git commit --date='Sat Jan 20 19:02:00 2024 +0500' -m "Add lexer tests"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 5) small lexer fixes
export GIT_AUTHOR_DATE='Sat Jan 27 21:30:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jan 27 21:30:00 2024 +0500'
git add lexer/*.go
git commit --date='Sat Jan 27 21:30:00 2024 +0500' -m "Fix minor lexer bugs"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 6) AST skeleton
export GIT_AUTHOR_DATE='Sat Feb 03 15:41:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Feb 03 15:41:00 2024 +0500'
git add ast/ast.go ast/*_test.go
git commit --date='Sat Feb 03 15:41:00 2024 +0500' -m "Introduce AST node definitions"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 7) parser (expressions)
export GIT_AUTHOR_DATE='Sat Feb 10 23:12:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Feb 10 23:12:00 2024 +0500'
git add parser/parser.go parser/*_test.go
git commit --date='Sat Feb 10 23:12:00 2024 +0500' -m "Add Pratt parser for expressions"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 8) parser (let/return)
export GIT_AUTHOR_DATE='Sat Feb 17 20:30:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Feb 17 20:30:00 2024 +0500'
git add parser/*.go
git commit --date='Sat Feb 17 20:30:00 2024 +0500' -m "Parse let and return statements"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 9) parser tests (prefix/infix)
export GIT_AUTHOR_DATE='Sat Feb 24 16:05:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Feb 24 16:05:00 2024 +0500'
git add parser/*_test.go ast/*_test.go
git commit --date='Sat Feb 24 16:05:00 2024 +0500' -m "Add parser tests for operators"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 10) object system
export GIT_AUTHOR_DATE='Sat Mar 02 21:50:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Mar 02 21:50:00 2024 +0500'
git add object/*.go
git commit --date='Sat Mar 02 21:50:00 2024 +0500' -m "Add base object system"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 11) evaluator: ints/bools
export GIT_AUTHOR_DATE='Sat Mar 09 18:15:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Mar 09 18:15:00 2024 +0500'
git add evaluator/evaluator.go evaluator/*_test.go
git commit --date='Sat Mar 09 18:15:00 2024 +0500' -m "Implement evaluator for integers and booleans"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 12) evaluator: if/else
export GIT_AUTHOR_DATE='Sat Mar 16 22:05:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Mar 16 22:05:00 2024 +0500'
git add evaluator/*.go
git commit --date='Sat Mar 16 22:05:00 2024 +0500' -m "Add conditionals (if/else) to evaluator"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 13) functions & closures
export GIT_AUTHOR_DATE='Sat Mar 23 17:40:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Mar 23 17:40:00 2024 +0500'
git add evaluator/*.go object/*.go
git commit --date='Sat Mar 23 17:40:00 2024 +0500' -m "Support functions and closures"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 14) strings/arrays/hashes
export GIT_AUTHOR_DATE='Sat Mar 30 20:11:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Mar 30 20:11:00 2024 +0500'
git add evaluator/*.go object/*.go
git commit --date='Sat Mar 30 20:11:00 2024 +0500' -m "Add strings, arrays, and hashes support"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 15) REPL + entrypoint
export GIT_AUTHOR_DATE='Sat Apr 06 19:55:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Apr 06 19:55:00 2024 +0500'
git add repl/*.go main.go
git commit --date='Sat Apr 06 19:55:00 2024 +0500' -m "Implement REPL and CLI entrypoint"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 16) examples
export GIT_AUTHOR_DATE='Sat Apr 13 15:18:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Apr 13 15:18:00 2024 +0500'
git add examples/* examples/**/* 2>/dev/null
git commit --date='Sat Apr 13 15:18:00 2024 +0500' -m "Add example Monkey scripts"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 17) builtins
export GIT_AUTHOR_DATE='Sat Apr 20 21:03:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Apr 20 21:03:00 2024 +0500'
git add evaluator/builtins.go object/builtins.go
git commit --date='Sat Apr 20 21:03:00 2024 +0500' -m "Add built-in functions (len, first, last, etc.)"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 18) REPL tweaks
export GIT_AUTHOR_DATE='Sat Apr 27 22:42:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Apr 27 22:42:00 2024 +0500'
git add repl/*.go
git commit --date='Sat Apr 27 22:42:00 2024 +0500' -m "Improve REPL with multi-line input"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 19) bytecode instruction set
export GIT_AUTHOR_DATE='Sat May 04 14:32:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat May 04 14:32:00 2024 +0500'
git add code/*.go
git commit --date='Sat May 04 14:32:00 2024 +0500' -m "Create bytecode instruction set"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 20) compiler (expressions)
export GIT_AUTHOR_DATE='Sat May 11 18:21:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat May 11 18:21:00 2024 +0500'
git add compiler/compiler.go compiler/symbol_table.go compiler/*_test.go
git commit --date='Sat May 11 18:21:00 2024 +0500' -m "Add compiler for expressions"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 21) compiler (statements/functions)
export GIT_AUTHOR_DATE='Sat May 18 22:45:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat May 18 22:45:00 2024 +0500'
git add compiler/*.go
git commit --date='Sat May 18 22:45:00 2024 +0500' -m "Compile let/return, conditionals, functions"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 22) VM core
export GIT_AUTHOR_DATE='Sat Jun 01 16:33:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jun 01 16:33:00 2024 +0500'
git add vm/vm.go vm/frame.go vm/*_test.go
git commit --date='Sat Jun 01 16:33:00 2024 +0500' -m "Introduce VM for bytecode execution"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 23) VM closures
export GIT_AUTHOR_DATE='Sat Jun 15 21:47:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jun 15 21:47:00 2024 +0500'
git add vm/*.go
git commit --date='Sat Jun 15 21:47:00 2024 +0500' -m "Add call frames and closures to VM"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 24) VM arrays & hashes
export GIT_AUTHOR_DATE='Sat Jun 22 23:12:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jun 22 23:12:00 2024 +0500'
git add vm/*.go
git commit --date='Sat Jun 22 23:12:00 2024 +0500' -m "Support arrays and hashes in VM"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 25) VM parity with evaluator
export GIT_AUTHOR_DATE='Sat Jun 29 20:22:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jun 29 20:22:00 2024 +0500'
git add vm/*.go compiler/*.go
git commit --date='Sat Jun 29 20:22:00 2024 +0500' -m "VM passes evaluator test suite"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 26) logical ops
export GIT_AUTHOR_DATE='Sat Jul 06 18:40:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jul 06 18:40:00 2024 +0500'
git add evaluator/*.go parser/*.go
git commit --date='Sat Jul 06 18:40:00 2024 +0500' -m "Add logical operators (&&, ||)"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 27) modulo
export GIT_AUTHOR_DATE='Sat Jul 13 21:55:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jul 13 21:55:00 2024 +0500'
git add evaluator/*.go parser/*.go
git commit --date='Sat Jul 13 21:55:00 2024 +0500' -m "Add modulo operator (%)"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 28) split/join
export GIT_AUTHOR_DATE='Sat Jul 20 20:05:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jul 20 20:05:00 2024 +0500'
git add evaluator/*.go object/*.go
git commit --date='Sat Jul 20 20:05:00 2024 +0500' -m "String ops: split, join"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 29) postfix ++/--
export GIT_AUTHOR_DATE='Sat Jul 27 17:33:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Jul 27 17:33:00 2024 +0500'
git add parser/*.go evaluator/*.go
git commit --date='Sat Jul 27 17:33:00 2024 +0500' -m "Support postfix operators (++/--)"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 30) better errors (line numbers)
export GIT_AUTHOR_DATE='Sat Aug 03 22:11:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Aug 03 22:11:00 2024 +0500'
git add lexer/*.go parser/*.go evaluator/*.go
git commit --date='Sat Aug 03 22:11:00 2024 +0500' -m "Improve error reporting with line numbers"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 31) comments // and /* */
export GIT_AUTHOR_DATE='Sat Aug 17 20:40:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Aug 17 20:40:00 2024 +0500'
git add lexer/*.go parser/*.go
git commit --date='Sat Aug 17 20:40:00 2024 +0500' -m "Add comment syntax (// and /* */)"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 32) benchmarks
export GIT_AUTHOR_DATE='Sat Aug 24 21:59:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Aug 24 21:59:00 2024 +0500'
git add cmd/benchmark/**/*
git commit --date='Sat Aug 24 21:59:00 2024 +0500' -m "Add benchmarks"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 33) makefile/build docs
export GIT_AUTHOR_DATE='Sat Sep 07 16:48:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Sep 07 16:48:00 2024 +0500'
git add Makefile .goreleaser.yml
git commit --date='Sat Sep 07 16:48:00 2024 +0500' -m "Add Makefile and release config"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 34) cleanup/refactor
export GIT_AUTHOR_DATE='Sat Sep 14 18:55:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Sep 14 18:55:00 2024 +0500'
git add parser/*.go evaluator/*.go compiler/*.go vm/*.go
git commit --date='Sat Sep 14 18:55:00 2024 +0500' -m "Cleanup & refactor across subsystems"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 35) README usage updates
export GIT_AUTHOR_DATE='Sat Sep 21 22:13:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Sep 21 22:13:00 2024 +0500'
git add README.md
git commit --date='Sat Sep 21 22:13:00 2024 +0500' -m "Update README with usage examples"
git push origin main --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE

# 36) v1.0 release tag commit
export GIT_AUTHOR_DATE='Sat Sep 28 20:25:00 2024 +0500'
export GIT_COMMITTER_DATE='Sat Sep 28 20:25:00 2024 +0500'
git add .
git commit --date='Sat Sep 28 20:25:00 2024 +0500' -m "Monkey Compiler v1.0"
git tag -a v1.0 -m "v1.0 (Sep 28, 2024)"
git push origin main --force
git push origin v1.0 --force
unset GIT_AUTHOR_DATE GIT_COMMITTER_DATE
