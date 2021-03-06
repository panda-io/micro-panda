package parser

import (
	"fmt"
	"strings"

	"github.com/panda-io/micro-panda/ast"
	"github.com/panda-io/micro-panda/token"
)

func (p *Parser) parseSourceFile(file *token.File) {
	m := &ast.Module{
		File: file,
	}
	m.Attributes = p.parseAttributes()
	m.Namespace = p.parseNamespace()
	m.Imports = p.parseImports()

	for p.token != token.EOF {
		attr := p.parseAttributes()
		public := p.parseModifier()
		switch p.token {
		case token.Const, token.Var:
			v := p.parseVariable(public, attr)
			v.Qualified = m.Namespace + "." + v.Name.Name
			if p.program.Declarations[v.Qualified] != nil {
				p.error(v.Name.Position, fmt.Sprintf("variable %s redeclared", v.Name.Name))
			}
			m.Variables = append(m.Variables, v)
			p.program.Declarations[v.Qualified] = v

		case token.Function:
			f := p.parseFunction(public, attr)
			f.Qualified = m.Namespace + "." + f.Name.Name
			if p.program.Declarations[f.Qualified] != nil {
				p.error(f.Name.Position, fmt.Sprintf("function %s redeclared", f.Name.Name))
			}
			m.Functions = append(m.Functions, f)
			p.program.Declarations[f.Qualified] = f

		case token.Enum:
			e := p.parseEnum(public, attr)
			e.Qualified = m.Namespace + "." + e.Name.Name
			if p.program.Declarations[e.Qualified] != nil {
				p.error(e.Name.Position, fmt.Sprintf("enum %s redeclared", e.Name.Name))
			}
			m.Enums = append(m.Enums, e)
			p.program.Declarations[e.Qualified] = e

		case token.Struct:
			s := p.parseStruct(public, attr)
			s.Qualified = m.Namespace + "." + s.Name.Name
			if p.program.Declarations[s.Qualified] != nil {
				p.error(s.Name.Position, fmt.Sprintf("class %s redeclared", s.Name.Name))
			}
			m.Structs = append(m.Structs, s)
			p.program.Declarations[s.Qualified] = s

		default:
			p.expectedError(p.position, "declaration")
		}
	}

	p.program.Modules[file.Name] = m
}

func (p *Parser) parseNamespace() string {
	p.expect(token.Namespace)
	if p.token == token.Semi {
		p.next()
		return ast.Global
	}
	namespace := p.parseQualified("")
	p.expect(token.Semi)
	return namespace
}

func (p *Parser) parseImports() []*ast.Import {
	imports := []*ast.Import{}
	for p.token == token.Import {
		p.expect(token.Import)
		u := &ast.Import{}
		name := p.parseIdentifier()
		if p.token == token.Assign {
			u.Alias = name.Name
			p.next()
			name = p.parseIdentifier()
		}
		u.Namespace = p.parseQualified(name.Name)
		if u.Alias == "" {
			names := strings.Split(u.Namespace, ".")
			u.Alias = names[len(names)-1]
		}
		p.expect(token.Semi)
		imports = append(imports, u)
	}
	return imports
}

func (p *Parser) parseQualified(identifier string) string {
	if identifier == "" {
		identifier = p.parseIdentifier().Name
	}
	Qualified := identifier
	for p.token == token.Dot {
		p.next()
		Qualified += "." + p.parseIdentifier().Name
	}
	return Qualified
}
