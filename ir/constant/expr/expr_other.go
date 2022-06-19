package ir

import (
	"fmt"
)

// --- [ Other expressions ] ---------------------------------------------------

// ~~~ [ icmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprICmp is an LLVM IR icmp expression.
type ExprICmp struct {
	// Integer comparison predicate.
	Pred IPred
	// Integer scalar or vector operands.
	X, Y Constant

	// extra.

	// Type of result produced by the constant expression.
	Typ Type
}

// NewICmp returns a new icmp expression based on the given integer comparison
// predicate and integer scalar or vector operands.
func NewExprICmp(pred IPred, x, y Constant) *ExprICmp {
	e := &ExprICmp{Pred: pred, X: x, Y: y}
	// Compute type.
	e.Type()
	return e
}

// String returns the LLVM syntax representation of the constant expression as a
// type-value pair.
func (e *ExprICmp) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

// Type returns the type of the constant expression.
func (e *ExprICmp) Type() Type {
	// Cache type if not present.
	if e.Typ == nil {
		switch xType := e.X.Type().(type) {
		case *IntType, *PointerType:
			e.Typ = I1
		case *VectorType:
			e.Typ = NewVectorType(xType.Len, I1)
		default:
			panic(fmt.Errorf("invalid icmp operand type; expected *IntType, *PointerType or *VectorType, got %T", xType))
		}
	}
	return e.Typ
}

// Ident returns the identifier associated with the constant expression.
func (e *ExprICmp) Ident() string {
	// 'icmp' Pred=IPred '(' X=TypeConst ',' Y=TypeConst ')'
	return fmt.Sprintf("icmp %s (%s, %s)", e.Pred, e.X, e.Y)
}

// Simplify returns an equivalent (and potentially simplified) constant to the
// constant expression.
func (e *ExprICmp) Simplify() Constant {
	//panic("not yet implemented")
	// TODO: implement
	return e
}

// ~~~ [ fcmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprFCmp is an LLVM IR fcmp expression.
type ExprFCmp struct {
	// Floating-point comparison predicate.
	Pred FPred
	// Floating-point scalar or vector operands.
	X, Y Constant

	// extra.

	// Type of result produced by the constant expression.
	Typ Type
}

// NewFCmp returns a new fcmp expression based on the given floating-point
// comparison predicate and floating-point scalar or vector operands.
func NewExprFCmp(pred FPred, x, y Constant) *ExprFCmp {
	e := &ExprFCmp{Pred: pred, X: x, Y: y}
	// Compute type.
	e.Type()
	return e
}

// String returns the LLVM syntax representation of the constant expression as a
// type-value pair.
func (e *ExprFCmp) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

// Type returns the type of the constant expression.
func (e *ExprFCmp) Type() Type {
	// Cache type if not present.
	if e.Typ == nil {
		switch xType := e.X.Type().(type) {
		case *FloatType:
			e.Typ = I1
		case *VectorType:
			e.Typ = NewVectorType(xType.Len, I1)
		default:
			panic(fmt.Errorf("invalid fcmp operand type; expected *FloatType or *VectorType, got %T", xType))
		}
	}
	return e.Typ
}

// Ident returns the identifier associated with the constant expression.
func (e *ExprFCmp) Ident() string {
	// 'fcmp' Pred=FPred '(' X=TypeConst ',' Y=TypeConst ')'
	return fmt.Sprintf("fcmp %s (%s, %s)", e.Pred, e.X, e.Y)
}

// Simplify returns an equivalent (and potentially simplified) constant to the
// constant expression.
func (e *ExprFCmp) Simplify() Constant {
	//panic("not yet implemented")
	// TODO: implement
	return e
}
