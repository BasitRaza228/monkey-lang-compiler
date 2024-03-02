package object

type String struct {
	Value string
}

func (s *String) Type() ObjectType { return StringObj }

// returns a string representation of the String's Value
func (s *String) Inspect() string { return s.Value }
