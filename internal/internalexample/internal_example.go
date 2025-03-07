package internalexample

import (
	"github.com/davecgh/go-spew/spew"
)

// InternalHello is a function that prints hello world in a convoluted way
// And cannot be referenced from outside of this repo.
// Use this for things you don't want accessible from outside of this library.
func InternalHello() {
	spew.Dump("Hello, World!")
}
