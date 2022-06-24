package expression

import (
	"fmt"

	"github.com/panda-io/micro-panda/ir/constant"
	"github.com/panda-io/micro-panda/ir/core"
	"github.com/panda-io/micro-panda/ir/types"
)

type GepIndex struct {
	HasVal bool
	Val    int64
}

func NewGepIndex(val int64) *GepIndex {
	return &GepIndex{
		HasVal: true,
		Val:    val,
	}
}

func GepResultType(elemType core.Type, indices []*GepIndex) core.Type {
	e := elemType
	for i, index := range indices {
		if i == 0 {
			continue
		}
		switch elm := e.(type) {
		case *types.PointerType:
			panic(fmt.Errorf("cannot index into pointer type at %d:th gep index, only valid at 0:th gep index; see https://llvm.org/docs/GetElementPtr.html#what-is-dereferenced-by-gep", i))
		case *types.ArrayType:
			e = elm.ElemType
		case *types.StructType:
			if !index.HasVal {
				panic(fmt.Errorf("unable to index into struct type `%v` using gep with non-constant index", e))
			}
			e = elm.Fields[index.Val]
		default:
			panic(fmt.Errorf("cannot index into type %T using gep", e))
		}
	}
	return types.NewPointerType(e)
}

func GetGepIndex(index constant.Constant) *GepIndex {
	if idx, ok := index.(*Index); ok {
		index = idx.Index
	}

	switch index := index.(type) {
	case *constant.Int:
		val := index.X.Int64()
		return NewGepIndex(val)

	case *constant.ZeroInitializer:
		return NewGepIndex(0)

	case Expression:
		return &GepIndex{HasVal: false}

	default:
		panic(fmt.Errorf("support for gep index type %T not yet implemented", index))
	}
}