%{#include<stdio.h>
int flag=0;
%}

%%
([aA][nN][dD]|[oO][rR]|[bB][uU][tT]) {flag=1;}
%%

int main()
{
	printf("Enter a statement\n");
	yylex();
		
	if(flag==1)
	{
		printf("This is a Compound statement\n");
	}
	else
	{
		printf("Not a Compound statement\n");
	}


}
