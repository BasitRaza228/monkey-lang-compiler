package object

import "fmt"

type Boolean struct {
	Value bool
}

func (b *Boolean) Type() ObjectType { return BooleanObj }

// returns a string representation of the Boolean's Value
func (b *Boolean) Inspect() string { return fmt.Sprintf("%t", b.Value) }
