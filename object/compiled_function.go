package object

import (
	"fmt"

	"github.com/BasitRaza228/monkey-lang-compiler/code"
)

// holds the instructions we get from the compilation of a function literal
type CompiledFunction struct {
	Instructions  code.Instructions
	NumLocals     int
	NumParameters int
}

func (cf *CompiledFunction) Type() ObjectType { return CompiledFunctionObj }

func (cf *CompiledFunction) Inspect() string { return fmt.Sprintf("CompiledFunction[%p]", cf) }
