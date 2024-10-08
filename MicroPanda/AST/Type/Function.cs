namespace MicroPanda.AST.Type;



internal class Function : Type
{
    internal Type? ReturnType { get; set; }
    internal List<Type> Parameters = [];

    internal bool MemberFunction { get; set; }
    internal bool Extern { get; set; }
    internal string? ExternName { get; set; }
    internal bool TypeDefine { get; set; }

    internal override bool Equal(Type type)
    {
        if (type is Function typeFunction)
        {
            if (ReturnType != null && typeFunction.ReturnType != null)
            {
                if (!ReturnType.Equal(typeFunction.ReturnType))
                {
                    return false;
                }
            }
            else if (ReturnType != typeFunction.ReturnType)
            {
                return false;
            }

            if (Parameters!.Count != typeFunction.Parameters!.Count)
            {
                return false;
            }

            for (int i = 0; i < Parameters.Count; i++)
            {
                if (!Parameters[i].Equal(typeFunction.Parameters[i]))
                {
                    return false;
                }
            }

            return true;
        }
        return false;
    }
}