package expression

import (
	"github.com/panda-io/micro-panda/ast/core"
	"github.com/panda-io/micro-panda/token"
)

type Unary struct {
	ExpressionBase
	Operator   token.Token
	Expression core.Expression
}

func (u *Unary) Validate(c core.Context, expected core.Type) {
	u.Expression.Validate(c, expected)
	u.Const = u.Expression.IsConstant()
	u.Typ = u.Expression.Type()
	switch u.Operator {
	case token.Plus, token.Minus:
		if !core.IsNumber(u.Typ) {
			c.Error(u.Position, "expect number expression")
		}
	case token.Not:
		if !core.IsBool(u.Typ) {
			c.Error(u.Position, "expect boolean expression")
		}
	case token.Complement:
		if !core.IsInteger(u.Typ) {
			c.Error(u.Position, "expect integer expression")
		}
	case token.BitAnd:
		if core.IsPointer(u.Typ) || core.IsFunction(u.Typ) || core.IsArray(u.Typ) {
			c.Error(u.Position, "pointer, function and array are not allowed to use '&' operator")
		}
		u.Typ = &core.TypePointer{
			ElementType: u.Typ,
		}
		switch u.Expression.(type) {
		case *Identifier:
		case *MemberAccess:
		case *Subscripting:
		default:
			c.Error(u.Position, "only identifier, member_access and subscripting are allowed with '&' operator")
		}
	}
}
