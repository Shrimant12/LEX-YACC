%{ 
#include"y.tab.h" 
extern yylval; 
%} 

%% 
[0-9]+ {yylval=atoi(yytext); return NUMBER;} 
[0-9,a-z,A-Z,0-9]+ {return ID;} 
[\t]+ ; 
\n {return 0;} 
. {return yytext[0];} 
%% 
