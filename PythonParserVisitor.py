# Generated from PythonParser.g4 by ANTLR 4.13.1
from antlr4 import *
if "." in __name__:
    from .PythonParser import PythonParser
else:
    from PythonParser import PythonParser

# This class defines a complete generic visitor for a parse tree produced by PythonParser.

class PythonParserVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by PythonParser#numero.
    def visitNumero(self, ctx:PythonParser.NumeroContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#identificador.
    def visitIdentificador(self, ctx:PythonParser.IdentificadorContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#start.
    def visitStart(self, ctx:PythonParser.StartContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#code.
    def visitCode(self, ctx:PythonParser.CodeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#stat.
    def visitStat(self, ctx:PythonParser.StatContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#atribuicao.
    def visitAtribuicao(self, ctx:PythonParser.AtribuicaoContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#expr.
    def visitExpr(self, ctx:PythonParser.ExprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#query.
    def visitQuery(self, ctx:PythonParser.QueryContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#conditional.
    def visitConditional(self, ctx:PythonParser.ConditionalContext):
        return self.visitChildren(ctx)



del PythonParser