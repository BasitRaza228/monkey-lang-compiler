package vm

import (
	"github.com/BasitRaza228/monkey-lang-compiler/code"
	"github.com/BasitRaza228/monkey-lang-compiler/object"
)

// Data structure that holds execution-relevant information.
type Frame struct {
	closure     *object.Closure
	ip          int
	basePointer int // Keeps track of the stacks pointer's value
}

// Instructions returns the frame's function's instructions
func (f *Frame) Instructions() code.Instructions {
	return f.closure.Fn.Instructions
}

// pointer to -1, and returns a pointer to the frame.
func NewFrame(cl *object.Closure, basePointer int) *Frame {
	return &Frame{
		closure:     cl,
		ip:          -1,
		basePointer: basePointer,
	}
}
