if "." in __name__:
    from .PythonParser import PythonParser
    from .PythonParserVisitor import PythonParserVisitor
else:
    from PythonParser import PythonParser
    from PythonParserVisitor import PythonParserVisitor

class Compiler(PythonParserVisitor):

    def __init__(self):
        super(PythonParserVisitor, self).__init__()
        self.vars = {}
        return None
    
    # Paste here all methods in PythonParserVisitor.py file

    # Visit a parse tree produced by PythonParser#numero.
    def visitNumero(self, ctx:PythonParser.NumeroContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#identificador.
    def visitIdentificador(self, ctx:PythonParser.IdentificadorContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#start.
    def visitStart(self, ctx:PythonParser.StartContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#code.
    def visitCode(self, ctx:PythonParser.CodeContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#stat.
    def visitStat(self, ctx:PythonParser.StatContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#atribuicao.
    def visitAtribuicao(self, ctx:PythonParser.AtribuicaoContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#expr.
    def visitExpr(self, ctx:PythonParser.ExprContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#query.
    def visitQuery(self, ctx:PythonParser.QueryContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#conditional.
    def visitConditional(self, ctx:PythonParser.ConditionalContext):
        print(('Here', ctx.getText(), type(ctx)))
        return self.visitChildren(ctx)

del (PythonParser)