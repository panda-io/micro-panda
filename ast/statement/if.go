package statement

import "github.com/panda-io/micro-panda/ast/core"

type If struct {
	StatementBase
	Initialization core.Statement
	Condition      core.Expression
	Body           core.Statement
	Else           core.Statement
}

func (i *If) Validate(c core.Context) {
	ctx := c.NewContext()
	if i.Initialization != nil {
		i.Initialization.Validate(ctx)
	}
	if i.Condition == nil {
		c.Error(i.Position, "expect condition expression")
	} else {
		i.Condition.Validate(ctx, core.TypeBool)
		if i.Condition.Type() != nil && !i.Condition.Type().Equal(core.TypeBool) {
			c.Error(i.Condition.GetPosition(), "expect bool type condition")
		}
	}
	if i.Body != nil {
		bodyCtx := ctx.NewContext()
		i.Body.Validate(bodyCtx)
	}
	if i.Else != nil {
		elseCtx := ctx.NewContext()
		i.Else.Validate(elseCtx)
	}
}