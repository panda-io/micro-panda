package llvm

import (
	"github.com/panda-io/micro-panda/ast/ast_types"
	"github.com/panda-io/micro-panda/ast/expression"
	"github.com/panda-io/micro-panda/target/llvm/ir/constant"
	ir_expression "github.com/panda-io/micro-panda/target/llvm/ir/constant/expression"
	"github.com/panda-io/micro-panda/target/llvm/ir/instruction"
	"github.com/panda-io/micro-panda/target/llvm/ir/ir"
	"github.com/panda-io/micro-panda/target/llvm/ir/ir_types"
)

func ConversionIR(ctx *Context, c *expression.Conversion) ir.Value {
	if c.Typ.Equal(c.Value.Type()) {
		return ExpressionIR(ctx, c.Value)
	}
	v := ctx.AutoLoad(ExpressionIR(ctx, c.Value))
	if ast_types.IsNumber(c.Typ) {
		t0 := c.Typ.(*ast_types.TypeBuiltin)
		t1 := c.Value.Type().(*ast_types.TypeBuiltin)
		size0 := ast_types.TypeBuiltinBits(t0)
		size1 := ast_types.TypeBuiltinBits(t1)
		if ast_types.IsInteger(c.Typ) {
			if ast_types.IsInteger(c.Value.Type()) {
				// int to int
				if size0 < size1 {
					trunc := instruction.NewTrunc(v, TypeIR(c.Typ))
					ctx.Block.AddInstruction(trunc)
					return trunc
				} else if size0 > size1 {
					sext := instruction.NewSExt(v, TypeIR(c.Typ))
					ctx.Block.AddInstruction(sext)
					return sext
				} else {
					return v
				}
			} else {
				// float to int
				t := TypeIR(t0).(*ir_types.IntType)
				if t.Unsigned {
					f2ui := instruction.NewFPToUI(v, TypeIR(c.Typ))
					ctx.Block.AddInstruction(f2ui)
					return f2ui
				} else {
					f2si := instruction.NewFPToSI(v, TypeIR(c.Typ))
					ctx.Block.AddInstruction(f2si)
					return f2si
				}
			}
		} else {
			if ast_types.IsInteger(c.Value.Type()) {
				// int to float
				t := TypeIR(c.Value.Type()).(*ir_types.IntType)
				if t.Unsigned {
					ui2f := instruction.NewUIToFP(v, TypeIR(c.Typ))
					ctx.Block.AddInstruction(ui2f)
					return ui2f
				} else {
					si2f := instruction.NewSIToFP(v, TypeIR(c.Typ))
					ctx.Block.AddInstruction(si2f)
					return si2f
				}
			} else {
				// float to float
				if size0 < size1 {
					trunc := instruction.NewFPTrunc(v, TypeIR(c.Typ))
					ctx.Block.AddInstruction(trunc)
					return trunc
				} else if size0 > size1 {
					sext := instruction.NewFPExt(v, TypeIR(c.Typ))
					ctx.Block.AddInstruction(sext)
					return sext
				} else {
					return v
				}
			}
		}
	} else if ast_types.IsPointer(c.Typ) {
		// bit cast
		cast := instruction.NewBitCast(v, TypeIR(c.Typ))
		ctx.Block.AddInstruction(cast)
		return cast
	}
	return nil
}

func ConversionConstIR(p *Program, c *expression.Conversion) constant.Constant {
	if c.Typ.Equal(c.Value.Type()) {
		return ExpressionConstIR(p, c.Value)
	}
	v := ExpressionConstIR(p, c.Value)
	if ast_types.IsNumber(c.Typ) {
		t0 := c.Typ.(*ast_types.TypeBuiltin)
		t1 := c.Value.Type().(*ast_types.TypeBuiltin)
		size0 := ast_types.TypeBuiltinBits(t0)
		size1 := ast_types.TypeBuiltinBits(t1)
		if ast_types.IsInteger(c.Typ) {
			if ast_types.IsInteger(c.Value.Type()) {
				// int to int
				if size0 < size1 {
					return ir_expression.NewExprTrunc(v, TypeIR(c.Typ))
				} else if size0 > size1 {
					return ir_expression.NewExprSExt(v, TypeIR(c.Typ))
				} else {
					return v
				}
			} else {
				// float to int
				t := TypeIR(t0).(*ir_types.IntType)
				if t.Unsigned {
					return ir_expression.NewExprFPToUI(v, TypeIR(c.Typ))
				} else {
					return ir_expression.NewExprFPToSI(v, TypeIR(c.Typ))
				}
			}
		} else {
			if ast_types.IsInteger(c.Value.Type()) {
				// int to float
				t := TypeIR(c.Value.Type()).(*ir_types.IntType)
				if t.Unsigned {
					return ir_expression.NewExprUIToFP(v, TypeIR(c.Typ))
				} else {
					return ir_expression.NewExprSIToFP(v, TypeIR(c.Typ))
				}
			} else {
				// float to float
				if size0 < size1 {
					return ir_expression.NewExprFPTrunc(v, TypeIR(c.Typ))
				} else if size0 > size1 {
					return ir_expression.NewExprFPExt(v, TypeIR(c.Typ))
				} else {
					return v
				}
			}
		}
	} else if ast_types.IsPointer(c.Typ) {
		// bit cast
		return ir_expression.NewExprBitCast(v, TypeIR(c.Typ))
	}
	return nil
}