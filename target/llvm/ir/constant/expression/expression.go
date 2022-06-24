package expression

import "github.com/panda-io/micro-panda/target/llvm/ir/constant"

// === [ Expressions ] =========================================================

// Expression is an LLVM IR constant expression.
//
// An Expression has one of the following underlying types.
//
// Unary expressions
//
// https://llvm.org/docs/LangRef.html#constant-expressions
//
//    *constant.ExprFNeg   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFNeg
//
// Binary expressions
//
// https://llvm.org/docs/LangRef.html#constant-expressions
//
//    *constant.ExprAdd    // https://godoc.org/github.com/llir/llvm/ir/constant#ExprAdd
//    *constant.ExprFAdd   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFAdd
//    *constant.ExprSub    // https://godoc.org/github.com/llir/llvm/ir/constant#ExprSub
//    *constant.ExprFSub   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFSub
//    *constant.ExprMul    // https://godoc.org/github.com/llir/llvm/ir/constant#ExprMul
//    *constant.ExprFMul   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFMul
//    *constant.ExprUDiv   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprUDiv
//    *constant.ExprSDiv   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprSDiv
//    *constant.ExprFDiv   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFDiv
//    *constant.ExprURem   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprURem
//    *constant.ExprSRem   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprSRem
//    *constant.ExprFRem   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFRem
//
// Bitwise expressions
//
// https://llvm.org/docs/LangRef.html#constant-expressions
//
//    *constant.ExprShl    // https://godoc.org/github.com/llir/llvm/ir/constant#ExprShl
//    *constant.ExprLShr   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprLShr
//    *constant.ExprAShr   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprAShr
//    *constant.ExprAnd    // https://godoc.org/github.com/llir/llvm/ir/constant#ExprAnd
//    *constant.ExprOr     // https://godoc.org/github.com/llir/llvm/ir/constant#ExprOr
//    *constant.ExprXor    // https://godoc.org/github.com/llir/llvm/ir/constant#ExprXor
//
// Memory expressions
//
// https://llvm.org/docs/LangRef.html#constant-expressions
//
//    *constant.ExprGetElementPtr   // https://godoc.org/github.com/llir/llvm/ir/constant#ExprGetElementPtr
//
// Conversion expressions
//
// https://llvm.org/docs/LangRef.html#constant-expressions
//
//    *constant.ExprTrunc           // https://godoc.org/github.com/llir/llvm/ir/constant#ExprTrunc
//    *constant.ExprSExt            // https://godoc.org/github.com/llir/llvm/ir/constant#ExprSExt
//    *constant.ExprFPTrunc         // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFPTrunc
//    *constant.ExprFPExt           // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFPExt
//    *constant.ExprFPToUI          // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFPToUI
//    *constant.ExprFPToSI          // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFPToSI
//    *constant.ExprUIToFP          // https://godoc.org/github.com/llir/llvm/ir/constant#ExprUIToFP
//    *constant.ExprSIToFP          // https://godoc.org/github.com/llir/llvm/ir/constant#ExprSIToFP
//    *constant.ExprBitCast         // https://godoc.org/github.com/llir/llvm/ir/constant#ExprBitCast
//    *constant.ExprPtrToInt        // https://godoc.org/github.com/llir/llvm/ir/constant#ExprPtrToInt
//    *constant.ExprIntToPtr        // https://godoc.org/github.com/llir/llvm/ir/constant#ExprIntToPtr
//
// Other expressions
//
// https://llvm.org/docs/LangRef.html#constant-expressions
//
//    *constant.ExprICmp     // https://godoc.org/github.com/llir/llvm/ir/constant#ExprICmp
//    *constant.ExprFCmp     // https://godoc.org/github.com/llir/llvm/ir/constant#ExprFCmp

type Expression interface {
	constant.Constant
}

// --- [ Unary expressions ] ---------------------------------------------------
func (*ExprFNeg) IsConstant() {}

// --- [ Binary expressions ] --------------------------------------------------
func (*ExprAdd) IsConstant()  {}
func (*ExprFAdd) IsConstant() {}
func (*ExprSub) IsConstant()  {}
func (*ExprFSub) IsConstant() {}
func (*ExprMul) IsConstant()  {}
func (*ExprFMul) IsConstant() {}
func (*ExprUDiv) IsConstant() {}
func (*ExprSDiv) IsConstant() {}
func (*ExprFDiv) IsConstant() {}
func (*ExprURem) IsConstant() {}
func (*ExprSRem) IsConstant() {}
func (*ExprFRem) IsConstant() {}

// --- [ Bitwise expressions ] -------------------------------------------------
func (*ExprShl) IsConstant()  {}
func (*ExprLShr) IsConstant() {}
func (*ExprAShr) IsConstant() {}
func (*ExprAnd) IsConstant()  {}
func (*ExprOr) IsConstant()   {}
func (*ExprXor) IsConstant()  {}

// --- [ Memory expressions ] --------------------------------------------------
func (*ExprGetElementPtr) IsConstant() {}

// --- [ Conversion expressions ] ----------------------------------------------
func (*ExprTrunc) IsConstant()    {}
func (*ExprSExt) IsConstant()     {}
func (*ExprFPTrunc) IsConstant()  {}
func (*ExprFPExt) IsConstant()    {}
func (*ExprFPToUI) IsConstant()   {}
func (*ExprFPToSI) IsConstant()   {}
func (*ExprUIToFP) IsConstant()   {}
func (*ExprSIToFP) IsConstant()   {}
func (*ExprBitCast) IsConstant()  {}
func (*ExprPtrToInt) IsConstant() {}
func (*ExprIntToPtr) IsConstant() {}

// --- [ Other expressions ] ---------------------------------------------------
func (*ExprICmp) IsConstant() {}
func (*ExprFCmp) IsConstant() {}

// --- [ Index ] --------------------------------
func (*Index) IsConstant() {}
