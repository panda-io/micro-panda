package com.github.panda_io.micro_panda.ast.statement;

import com.github.panda_io.micro_panda.ast.Context;
import com.github.panda_io.micro_panda.ast.expression.Identifier;
import com.github.panda_io.micro_panda.ast.type.*;

public class Declaration extends Statement {
    public Identifier name;
    public Type type;
    public com.github.panda_io.micro_panda.ast.expression.Expression value;

    public void validate(Context context) {
        this.type = context.resolveType(this.type);
        if (this.value != null) {
            this.value.validate(context, this.type);
            if (this.value.getType() != null && this.type != null && !this.value.getType().equal(this.type)) {
                context.addError(this.value.getOffset(),
                        String.format("init value type mismatch with define, expect '%s', got '%s'", this.type.string(),
                                this.value.getType().string()));
            }
        }
        if (this.type != null) {
            boolean success = context.insertObject(this.name.name, this.type);
            if (!success) {
                context.addError(this.getOffset(), String.format("redeclared variable: %s", this.name.name));
            }
        }
    }
}
