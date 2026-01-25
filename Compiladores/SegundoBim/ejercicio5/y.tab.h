#ifndef _yy_defines_h_
#define _yy_defines_h_

#define TKN_NUM 257
#define TKN_ASIGN 258
#define TKN_PTOCOMA 259
#define TKN_MULT 260
#define TKN_DIV 261
#define TKN_MAS 262
#define TKN_MENOS 263
#define TKN_PAA 264
#define TKN_PAC 265
#define TKN_COS 266
#define TKN_SEN 267
#define TKN_ID 268
#ifdef YYSTYPE
#undef  YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
#endif
#ifndef YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
typedef union YYSTYPE
{
    float real;
} YYSTYPE;
#endif /* !YYSTYPE_IS_DECLARED */
extern YYSTYPE yylval;

#endif /* _yy_defines_h_ */
