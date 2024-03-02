package object

import "fmt"

// holds a pointer to its compiled function
type Closure struct {
	Fn   *CompiledFunction
	Free []Object
}

func (c *Closure) Type() ObjectType { return ClosureObj }

func (c *Closure) Inspect() string {
	return fmt.Sprintf("Closure[%p]", c)
}
