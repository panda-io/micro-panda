package com.github.panda_io.micro_panda.ast.expression;

import com.github.panda_io.micro_panda.ast.type.Type;
import com.github.panda_io.micro_panda.ast.Context;

public class Conversion extends Expression {
    public Expression value;

    public void validate(Context context, Type expected) {
        this.type = context.resolveType(this.type);
        this.value.validate(context, this.type);
        this.constant = this.value.isConstant();
        if (!((this.type.isNumber() && this.value.type.isNumber())
                || (this.type.isPointer() && this.value.type.isPointer()))) {
            context.addError(this.type.getOffset(), "invalid type conversion");
        }
    }
}
