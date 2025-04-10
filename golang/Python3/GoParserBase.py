from antlr4 import *

class GoParserBase(Parser):

    def closingBracket(self) -> bool:
        la = self._input.LA(1)
        return la == self.R_PAREN or la == self.R_CURLY or la == Token.EOF

    def isType(self) -> bool:
        la = self._input.LA(1)
        return la != self.IDENTIFIER

    def isNotReceive(self) -> bool:
        la = self._input.LA(2)
        return la != self.RECEIVE
