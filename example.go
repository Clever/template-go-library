package greeting

import (
	"github.com/Clever/{{.AppName}}/internal/internalexample"
)

// Hello is a function that prints hello world in a convoluted way by calling a function from an
// internal package.
func Hello() {
	internalexample.InternalHello()
}
