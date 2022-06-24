package expression

import (
	"fmt"

	"github.com/panda-io/micro-panda/ir/constant"
	"github.com/panda-io/micro-panda/ir/core"
)

type ExprTrunc struct {
	From constant.Constant
	To   core.Type
}

func NewExprTrunc(from constant.Constant, to core.Type) *ExprTrunc {
	e := &ExprTrunc{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprTrunc) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprTrunc) Type() core.Type {
	return e.To
}

func (e *ExprTrunc) Ident() string {
	return fmt.Sprintf("trunc (%s to %s)", e.From, e.To)
}

type ExprSExt struct {
	From constant.Constant
	To   core.Type
}

func NewExprSExt(from constant.Constant, to core.Type) *ExprSExt {
	e := &ExprSExt{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprSExt) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprSExt) Type() core.Type {
	return e.To
}

func (e *ExprSExt) Ident() string {
	return fmt.Sprintf("sext (%s to %s)", e.From, e.To)
}

type ExprFPTrunc struct {
	From constant.Constant
	To   core.Type
}

func NewExprFPTrunc(from constant.Constant, to core.Type) *ExprFPTrunc {
	e := &ExprFPTrunc{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprFPTrunc) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprFPTrunc) Type() core.Type {
	return e.To
}

func (e *ExprFPTrunc) Ident() string {
	return fmt.Sprintf("fptrunc (%s to %s)", e.From, e.To)
}

type ExprFPExt struct {
	From constant.Constant
	To   core.Type
}

func NewExprFPExt(from constant.Constant, to core.Type) *ExprFPExt {
	e := &ExprFPExt{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprFPExt) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprFPExt) Type() core.Type {
	return e.To
}

func (e *ExprFPExt) Ident() string {
	return fmt.Sprintf("fpext (%s to %s)", e.From, e.To)
}

type ExprFPToUI struct {
	From constant.Constant
	To   core.Type
}

func NewExprFPToUI(from constant.Constant, to core.Type) *ExprFPToUI {
	e := &ExprFPToUI{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprFPToUI) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprFPToUI) Type() core.Type {
	return e.To
}

func (e *ExprFPToUI) Ident() string {
	return fmt.Sprintf("fptoui (%s to %s)", e.From, e.To)
}

type ExprFPToSI struct {
	From constant.Constant
	To   core.Type
}

func NewExprFPToSI(from constant.Constant, to core.Type) *ExprFPToSI {
	e := &ExprFPToSI{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprFPToSI) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprFPToSI) Type() core.Type {
	return e.To
}

func (e *ExprFPToSI) Ident() string {
	return fmt.Sprintf("fptosi (%s to %s)", e.From, e.To)
}

type ExprUIToFP struct {
	From constant.Constant
	To   core.Type
}

func NewExprUIToFP(from constant.Constant, to core.Type) *ExprUIToFP {
	e := &ExprUIToFP{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprUIToFP) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprUIToFP) Type() core.Type {
	return e.To
}

func (e *ExprUIToFP) Ident() string {
	return fmt.Sprintf("uitofp (%s to %s)", e.From, e.To)
}

type ExprSIToFP struct {
	From constant.Constant
	To   core.Type
}

func NewExprSIToFP(from constant.Constant, to core.Type) *ExprSIToFP {
	e := &ExprSIToFP{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprSIToFP) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprSIToFP) Type() core.Type {
	return e.To
}

func (e *ExprSIToFP) Ident() string {
	return fmt.Sprintf("sitofp (%s to %s)", e.From, e.To)
}

type ExprBitCast struct {
	From constant.Constant
	To   core.Type
}

func NewExprBitCast(from constant.Constant, to core.Type) *ExprBitCast {
	e := &ExprBitCast{From: from, To: to}
	e.Type()
	return e
}

func (e *ExprBitCast) String() string {
	return fmt.Sprintf("%s %s", e.Type(), e.Ident())
}

func (e *ExprBitCast) Type() core.Type {
	return e.To
}

func (e *ExprBitCast) Ident() string {
	return fmt.Sprintf("bitcast (%s to %s)", e.From, e.To)
}