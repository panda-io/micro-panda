package declaration

import "github.com/panda-io/micro-panda/ast/ast"

type Variable struct {
	DeclarationBase
	Typ   ast.Type
	Const bool
	Value ast.Expression

	Parent *Struct
}

func (v *Variable) IsConstant() bool {
	return v.Const
}

func (v *Variable) Kind() ast.DeclarationKind {
	return ast.DeclarationVariable
}

func (v *Variable) Type() ast.Type {
	return v.Typ
}

func (v *Variable) ResolveType(c ast.Context) {
	v.Typ = c.ResolveType(v.Typ)
}

func (v *Variable) Validate(c ast.Context) {
	if v.Value != nil {
		v.Value.Validate(c, v.Typ)
	}
	if v.Const {
		if v.Value == nil {
			c.Error(v.GetPosition(), "const must be initialized when declare")
		} else if !v.Value.IsConstant() {
			c.Error(v.Value.GetPosition(), "expect const expression")
		}
	}
	if v.Value != nil {
		if v.Value.Type() == nil {
			c.Error(v.Value.GetPosition(), "unknown type")
		} else if !v.Value.Type().Equal(v.Typ) {
			c.Error(v.Value.GetPosition(), "init value type mismatch with define")
		}
	}
}
