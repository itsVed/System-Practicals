%{
#include "y.tab.h"
%}
%%
[0-9]+ {return DIGIT;}
[a-z]+ {return LETTER;}
[ \t] {;}
\n { return 0;}
. {return yytext[0];}
%%

