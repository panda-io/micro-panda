package expression

import (
	"fmt"

	"github.com/panda-io/micro-panda/ir/constant"
	"github.com/panda-io/micro-panda/ir/core"
)

type ExprShl struct {
	X, Y constant.Constant // integer scalars or vectors
	Typ  core.Type
}

func NewExprShl(x, y constant.Constant) *ExprShl {
	e := &ExprShl{X: x, Y: y}
	e.Type()
	return e
}

func (e *ExprShl) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprShl) Type() core.Type {
	if e.Typ == nil {
		e.Typ = e.X.Type()
	}
	return e.Typ
}

func (e *ExprShl) Ident() string {
	return fmt.Sprintf("shl (%s, %s)", e.X, e.Y)
}

type ExprLShr struct {
	X, Y constant.Constant // integer scalars or vectors
	Typ  core.Type
}

func NewExprLShr(x, y constant.Constant) *ExprLShr {
	e := &ExprLShr{X: x, Y: y}
	e.Type()
	return e
}

func (e *ExprLShr) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprLShr) Type() core.Type {
	if e.Typ == nil {
		e.Typ = e.X.Type()
	}
	return e.Typ
}

func (e *ExprLShr) Ident() string {
	return fmt.Sprintf("lshr (%s, %s)", e.X, e.Y)
}

type ExprAShr struct {
	X, Y constant.Constant // integer scalars or vectors
	Typ  core.Type
}

func NewExprAShr(x, y constant.Constant) *ExprAShr {
	e := &ExprAShr{X: x, Y: y}
	e.Type()
	return e
}

func (e *ExprAShr) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprAShr) Type() core.Type {
	if e.Typ == nil {
		e.Typ = e.X.Type()
	}
	return e.Typ
}

func (e *ExprAShr) Ident() string {
	return fmt.Sprintf("ashr (%s, %s)", e.X, e.Y)
}

type ExprAnd struct {
	X, Y constant.Constant // integer scalars or vectors
	Typ  core.Type
}

func NewExprAnd(x, y constant.Constant) *ExprAnd {
	e := &ExprAnd{X: x, Y: y}
	e.Type()
	return e
}

func (e *ExprAnd) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprAnd) Type() core.Type {
	if e.Typ == nil {
		e.Typ = e.X.Type()
	}
	return e.Typ
}

func (e *ExprAnd) Ident() string {
	return fmt.Sprintf("and (%s, %s)", e.X, e.Y)
}

type ExprOr struct {
	X, Y constant.Constant // integer scalars or vectors
	Typ  core.Type
}

func NewExprOr(x, y constant.Constant) *ExprOr {
	e := &ExprOr{X: x, Y: y}
	e.Type()
	return e
}

func (e *ExprOr) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprOr) Type() core.Type {
	if e.Typ == nil {
		e.Typ = e.X.Type()
	}
	return e.Typ
}

func (e *ExprOr) Ident() string {
	return fmt.Sprintf("or (%s, %s)", e.X, e.Y)
}

type ExprXor struct {
	X, Y constant.Constant // integer scalars or vectors
	Typ  core.Type
}

func NewExprXor(x, y constant.Constant) *ExprXor {
	e := &ExprXor{X: x, Y: y}
	e.Type()
	return e
}

func (e *ExprXor) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprXor) Type() core.Type {
	if e.Typ == nil {
		e.Typ = e.X.Type()
	}
	return e.Typ
}

func (e *ExprXor) Ident() string {
	return fmt.Sprintf("xor (%s, %s)", e.X, e.Y)
}