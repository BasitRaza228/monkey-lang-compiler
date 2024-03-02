package object

// holds a return value
type ReturnValue struct {
	Value Object
}

func (rv *ReturnValue) Type() ObjectType { return ReturnValueObj }

// returns a string representation of the ReturnValue's Value
func (rv *ReturnValue) Inspect() string { return rv.Value.Inspect() }
