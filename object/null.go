package object

type Null struct{}

func (n *Null) Type() ObjectType { return NullObj }

// returns a string representation of Null ("null")
func (n *Null) Inspect() string { return "null" }
