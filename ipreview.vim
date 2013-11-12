" Vim syntax file
" Language:	Vim help file
" Maintainer:	Bram Moolenaar (Bram@vim.org)
" Last Change:	2009 May 18

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match helpHeadline		"^[-A-Z .][-A-Z0-9 .()]*[ \t]\+\*"me=e-1
syn match helpSectionDelim	"^=\{3,}.*===$"
syn match helpSectionDelim	"^-\{3,}.*--$"
syn region helpExample		matchgroup=helpIgnore start=" >$" start="^>$" end="^[^ \t]"me=e-1 end="^<"
if has("ebcdic")
  syn match helpHyperTextJump	"\\\@<!|[^"*|]\+|" contains=helpBar
  syn match helpHyperTextEntry	"\*[^"*|]\+\*\s"he=e-1 contains=helpStar
  syn match helpHyperTextEntry	"\*[^"*|]\+\*$" contains=helpStar
else
  syn match helpHyperTextJump	"\\\@<!|[#-)!+-~]\+|" contains=helpBar
  syn match helpHyperTextEntry	"\*[#-)!+-~]\+\*\s"he=e-1 contains=helpStar
  syn match helpHyperTextEntry	"\*[#-)!+-~]\+\*$" contains=helpStar
  syn match helpHyperTextEntry	"\*[#-)!+-~]\+\*" contains=helpStar
endif
syn match helpBar		contained "|" conceal
syn match helpStar		contained "\*" conceal
syn match helpNormal		"|.*====*|"
syn match helpNormal		":|vim:|"	" for :help modeline
syn match helpVim		"Vim version [0-9.a-z]\+"
syn match helpVim		"VIM REFERENCE.*"
syn match helpOption		"'[a-z]\{2,\}'"
syn match helpOption		"'t_..'"
syn match helpHeader		"\s*\zs.\{-}\ze\s\=\~$" nextgroup=helpIgnore
syn match helpIgnore		"." contained conceal
syn keyword helpNote		note Note NOTE note: Note: NOTE: Notes Notes:
syn match helpSpecial		"\<N\.$"me=e-1
syn match helpSpecial		"\<N\.\s"me=e-2
syn match helpSpecial		"(N\>"ms=s+1
syn match helpSpecial		"\[N]"
" avoid highlighting N  N in help.txt
syn match helpSpecial		"N  N"he=s+1
syn match helpSpecial		"Nth"me=e-2
syn match helpSpecial		"N-1"me=e-2
syn match helpSpecial		"\s\[[-a-z^A-Z0-9_]\{2,}]"ms=s+1
syn match helpSpecial		"\[range]"
syn match helpSpecial		"\[line]"
syn match helpSpecial		"\[count]"
syn match helpSpecial		"\[offset]"
syn match helpSpecial		"\[cmd]"
syn match helpSpecial		"\[num]"
syn match helpSpecial		"\[+num]"
syn match helpSpecial		"\[-num]"
syn match helpSpecial		"\[+cmd]"
syn match helpSpecial		"\[++opt]"
syn match helpSpecial		"\[arg]"
syn match helpSpecial		"\[arguments]"
syn match helpSpecial		"\[ident]"
syn match helpSpecial		"\[addr]"
syn match helpSpecial		"\[group]"
syn match helpSpecial		"CTRL-."
syn match helpSpecial		"CTRL-Break"
syn match helpSpecial		"CTRL-PageUp"
syn match helpSpecial		"CTRL-PageDown"
syn match helpSpecial		"CTRL-Insert"
syn match helpSpecial		"CTRL-Del"
syn match helpSpecial		"CTRL-{char}"
syn region helpNotVi		start="{Vi[: ]" start="{not" start="{only" end="}" contains=helpLeadBlank,helpHyperTextJump
syn match helpLeadBlank		"^\s\+" contained

" Highlight group items in their own color.
syn match helpComment		"\t[* ]Comment\t\+[a-z].*"
syn match helpConstant		"\t[* ]Constant\t\+[a-z].*"
syn match helpString		"\t[* ]String\t\+[a-z].*"
syn match helpCharacter		"\t[* ]Character\t\+[a-z].*"
syn match helpNumber		"\t[* ]Number\t\+[a-z].*"
syn match helpBoolean		"\t[* ]Boolean\t\+[a-z].*"
syn match helpFloat		"\t[* ]Float\t\+[a-z].*"
syn match helpIdentifier	"\t[* ]Identifier\t\+[a-z].*"
syn match helpFunction		"\t[* ]Function\t\+[a-z].*"
syn match helpUnderlined		"!!.*!!"
syn match helpSpecial		"??.*??"
syn match helpStatement		"【.*】"
syn match helpStorageClass		"《.*》"
syn match helpHyperTextJump		"`.*`"
syn match helpIgnore		"DEPRECATE(.*)DEPRECATE"
syn match helpConditional	"\t[* ]Conditional\t\+[a-z].*"
syn match helpRepeat		"\t[* ]Repeat\t\+[a-z].*"
syn match helpLabel		"\t[* ]Label\t\+[a-z].*"
syn match helpOperator		"\t[* ]Operator\t\+["a-z].*"
syn match helpKeyword		"\t[* ]Keyword\t\+[a-z].*"
syn match helpException		"\t[* ]Exception\t\+[a-z].*"
syn match helpPreProc		"\t[* ]PreProc\t\+[a-z].*"
syn match helpInclude		"\t[* ]Include\t\+[a-z].*"
syn match helpDefine		"\t[* ]Define\t\+[a-z].*"
syn match helpMacro		"\t[* ]Macro\t\+[a-z].*"
syn match helpPreCondit		"\t[* ]PreCondit\t\+[a-z].*"
syn match helpType		"\t[* ]Type\t\+[a-z].*"
syn match helpStorageClass	"\t[* ]StorageClass\t\+[a-z].*"
syn match helpStructure		"\t[* ]Structure\t\+[a-z].*"
syn match helpTypedef		"\t[* ]Typedef\t\+[Aa-z].*"
syn match helpSpecial		"\t[* ]Special\t\+[a-z].*"
syn match helpSpecialChar	"\t[* ]SpecialChar\t\+[a-z].*"
syn match helpTag		"\t[* ]Tag\t\+[a-z].*"
syn match helpDelimiter		"\t[* ]Delimiter\t\+[a-z].*"
syn match helpSpecialComment	"\t[* ]SpecialComment\t\+[a-z].*"
syn match helpDebug		"\t[* ]Debug\t\+[a-z].*"
syn match helpUnderlined	"\t[* ]Underlined\t\+[a-z].*"
syn match helpUnderlined	"FOLLOW UP"
syn match helpUnderlined	"FOLLOWUP"
syn match helpError		"ERROR"
syn match helpError		"TODO"
syn match helpError		"QUESTION"
syn match helpTodo		"FEELING"
syn match helpTodo		"IDEA"
syn match helpTodo		"INSIGHT"
syn match helpTodo		"METHOD"
syn match helpTodo		"RETROSPECT"
syn match helpTodo		"RETROSPECTIVE"

syn match helpURL `\v<(((https?|ftp|gopher)://|(mailto|file|news):)[^' 	<>"]+|(www|web|w3)[a-z0-9_-]*\.[a-z0-9._-]+\.[^' 	<>"]+)[a-zA-Z0-9/]`

" Additionally load a language-specific syntax file "help_ab.vim".
let s:i = match(expand("%"), '\.\a\ax$')
if s:i > 0
  exe "runtime syntax/help_" . strpart(expand("%"), s:i + 1, 2) . ".vim"
endif

" Italian
if v:lang =~ '\<IT\>' || v:lang =~ '_IT\>' || v:lang =~? "italian"
  syn keyword helpNote		nota Nota NOTA nota: Nota: NOTA: notare Notare NOTARE notare: Notare: NOTARE:
  syn match helpSpecial		"Nma"me=e-2
  syn match helpSpecial		"Nme"me=e-2
  syn match helpSpecial		"Nmi"me=e-2
  syn match helpSpecial		"Nmo"me=e-2
  syn match helpSpecial		"\[interv.]"
  syn region helpNotVi		start="{non" start="{solo" start="{disponibile" end="}" contains=helpLeadBlank,helpHyperTextJump
endif

syn sync minlines=40


" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link helpIgnore		Ignore
hi def link helpHyperTextJump	Subtitle
hi def link helpBar		Ignore
hi def link helpStar		Ignore
hi def link helpHyperTextEntry	String
hi def link helpHeadline	Statement
hi def link helpHeader		PreProc
hi def link helpSectionDelim	PreProc
hi def link helpVim		Identifier
hi def link helpExample		Comment
hi def link helpOption		Type
hi def link helpNotVi		Special
hi def link helpSpecial		Special
hi def link helpNote		Todo
hi def link Subtitle		Identifier

hi def link helpComment		Comment
hi def link helpConstant	Constant
hi def link helpString		String
hi def link helpCharacter	Character
hi def link helpNumber		Number
hi def link helpBoolean		Boolean
hi def link helpFloat		Float
hi def link helpIdentifier	Identifier
hi def link helpFunction	Function
hi def link helpStatement	Statement
hi def link helpConditional	Conditional
hi def link helpRepeat		Repeat
hi def link helpLabel		Label
hi def link helpOperator	Operator
hi def link helpKeyword		Keyword
hi def link helpException	Exception
hi def link helpPreProc		PreProc
hi def link helpInclude		Include
hi def link helpDefine		Define
hi def link helpMacro		Macro
hi def link helpPreCondit	PreCondit
hi def link helpType		Type
hi def link helpStorageClass	StorageClass
hi def link helpStructure	Structure
hi def link helpTypedef		Typedef
hi def link helpSpecialChar	SpecialChar
hi def link helpTag		Tag
hi def link helpDelimiter	Delimiter
hi def link helpSpecialComment	SpecialComment
hi def link helpDebug		Debug
hi def link helpUnderlined	Underlined
hi def link helpError		Error
hi def link helpTodo		Todo
hi def link helpURL		String

let b:current_syntax = "help"

" vim: ts=8 sw=2

" Vim syntax file " Language:	  Java
" Maintainer:	Claudio Fleiner <claudio@fleiner.com>
" URL:		http://www.fleiner.com/vim/syntax/java.vim
" Last Change:	2010 March 23

" Please check :help java.vim for comments on some of the options available.


" don't use standard HiLink, it will not work with included syntax files
if version < 508
  command! -nargs=+ JavaHiLink hi link <args>
else
  command! -nargs=+ JavaHiLink hi def link <args>
endif

" some characters that cannot be in a java program (outside a string)
syn match javaError "<<<\|\.\.\|=>\|<>\|||=\|&&=\|[^-]->\|\*\/"
syn match javaOK "\.\.\."

" use separate name so that it can be deleted in javacc.vim
syn match   javaError2 "#\|=<"
JavaHiLink javaError2 javaError

" keyword definitions
syn keyword javaExternal	native package
syn match javaExternal		"\<import\>\(\s\+static\>\)\?"
syn keyword javaError		goto const
syn keyword javaConditional	if else switch
syn keyword javaRepeat		while for do
syn keyword javaBoolean		true false
syn keyword javaConstant	null
syn keyword javaTypedef		this super
syn keyword javaOperator	new instanceof
syn keyword javaType		boolean char byte short int long float double
syn keyword javaType		void
syn keyword javaStatement	return
syn keyword javaStorageClass	static synchronized transient volatile final strictfp serializable
syn keyword javaExceptions	throw try catch finally
syn keyword javaAssert		assert
syn keyword javaMethodDecl	synchronized throws
syn keyword javaClassDecl	extends implements interface
" to differentiate the keyword class from MyClass.class we use a match here
syn match   javaTypedef		"\.\s*\<class\>"ms=s+1
syn keyword javaClassDecl	enum
syn match   javaClassDecl	"^class\>"
syn match   javaClassDecl	"[^.]\s*\<class\>"ms=s+1
syn match   javaAnnotation	"@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"
syn match   javaClassDecl	"@interface\>"
syn keyword javaBranch		break continue nextgroup=javaUserLabelRef skipwhite
syn match   javaUserLabelRef	"\k\+" contained
syn match   javaVarArg		"\.\.\."
syn keyword javaScopeDecl	public protected private abstract

if exists("java_highlight_java_lang_ids")
  let java_highlight_all=1
endif
if exists("java_highlight_all")  || exists("java_highlight_java")  || exists("java_highlight_java_lang") 
  " java.lang.*
  syn match javaLangClass "\<System\>"
  syn keyword javaR_JavaLang NegativeArraySizeException ArrayStoreException IllegalStateException RuntimeException IndexOutOfBoundsException UnsupportedOperationException ArrayIndexOutOfBoundsException ArithmeticException ClassCastException EnumConstantNotPresentException StringIndexOutOfBoundsException IllegalArgumentException IllegalMonitorStateException IllegalThreadStateException NumberFormatException NullPointerException TypeNotPresentException SecurityException
  syn cluster javaTop add=javaR_JavaLang
  syn cluster javaClasses add=javaR_JavaLang
  JavaHiLink javaR_JavaLang javaR_Java
  syn keyword javaC_JavaLang Process RuntimePermission StringKeySet CharacterData01 Class ThreadLocal ThreadLocalMap CharacterData0E Package Character StringCoding Long ProcessImpl ProcessEnvironment Short AssertionStatusDirectives 1PackageInfoProxy UnicodeBlock InheritableThreadLocal AbstractStringBuilder StringEnvironment ClassLoader ConditionalSpecialCasing CharacterDataPrivateUse StringBuffer StringDecoder Entry StringEntry WrappedHook StringBuilder StrictMath State ThreadGroup Runtime CharacterData02 MethodArray Object CharacterDataUndefined Integer Gate Boolean Enum Variable Subset StringEncoder Void Terminator CharsetSD IntegerCache CharacterCache Byte CharsetSE Thread SystemClassLoaderAction CharacterDataLatin1 StringValues StackTraceElement Shutdown ShortCache String ConverterSD ByteCache Lock EnclosingMethodInfo Math Float Value Double SecurityManager LongCache ProcessBuilder StringEntrySet Compiler Number UNIXProcess ConverterSE ExternalData CaseInsensitiveComparator CharacterData00 NativeLibrary
  syn cluster javaTop add=javaC_JavaLang
  syn cluster javaClasses add=javaC_JavaLang
  JavaHiLink javaC_JavaLang javaC_Java
  syn keyword javaE_JavaLang IncompatibleClassChangeError InternalError UnknownError ClassCircularityError AssertionError ThreadDeath IllegalAccessError NoClassDefFoundError ClassFormatError UnsupportedClassVersionError NoSuchFieldError VerifyError ExceptionInInitializerError InstantiationError LinkageError NoSuchMethodError Error UnsatisfiedLinkError StackOverflowError AbstractMethodError VirtualMachineError OutOfMemoryError
  syn cluster javaTop add=javaE_JavaLang
  syn cluster javaClasses add=javaE_JavaLang
  JavaHiLink javaE_JavaLang javaE_Java
  syn keyword javaX_JavaLang CloneNotSupportedException Exception NoSuchMethodException IllegalAccessException NoSuchFieldException Throwable InterruptedException ClassNotFoundException InstantiationException
  syn cluster javaTop add=javaX_JavaLang
  syn cluster javaClasses add=javaX_JavaLang
  JavaHiLink javaX_JavaLang javaX_Java

  JavaHiLink javaR_Java javaR_
  JavaHiLink javaC_Java javaC_
  JavaHiLink javaE_Java javaE_
  JavaHiLink javaX_Java javaX_
  JavaHiLink javaX_		     javaExceptions
  JavaHiLink javaR_		     javaExceptions
  JavaHiLink javaE_		     javaExceptions
  JavaHiLink javaC_		     javaConstant

  syn keyword javaLangObject clone equals finalize getClass hashCode
  syn keyword javaLangObject notify notifyAll toString wait
  JavaHiLink javaLangObject		     javaConstant
  syn cluster javaTop add=javaLangObject
endif

if filereadable(expand("<sfile>:p:h")."/javaid.vim")
  source <sfile>:p:h/javaid.vim
endif

if exists("java_space_errors")
  if !exists("java_no_trail_space_error")
    syn match	javaSpaceError	"\s\+$"
  endif
  if !exists("java_no_tab_space_error")
    syn match	javaSpaceError	" \+\t"me=e-1
  endif
endif

syn region  javaLabelRegion	transparent matchgroup=javaLabel start="\<case\>" matchgroup=NONE end=":" contains=javaNumber,javaCharacter
syn match   javaUserLabel	"^\s*[_$a-zA-Z][_$a-zA-Z0-9_]*\s*:"he=e-1 contains=javaLabel
syn keyword javaLabel		default

if !exists("java_allow_cpp_keywords")
  syn keyword javaError auto extern friend inline redeclared
  syn keyword javaError register signed sizeof struct template typedef 
  syn keyword javaError unsigned operator
endif

" The following cluster contains all java groups except the contained ones
syn cluster javaTop add=javaExternal,javaError,javaError,javaBranch,javaLabelRegion,javaLabel,javaConditional,javaRepeat,javaBoolean,javaConstant,javaTypedef,javaOperator,javaType,javaType,javaStatement,javaStorageClass,javaAssert,javaExceptions,javaMethodDecl,javaClassDecl,javaClassDecl,javaClassDecl,javaScopeDecl,javaError,javaError2,javaUserLabel,javaLangObject,javaAnnotation,javaVarArg


" Comments
syn keyword javaTodo		 contained TODO FIXME XXX
if exists("java_comment_strings")
  syn region  javaCommentString    contained start=+"+ end=+"+ end=+$+ end=+\*/+me=s-1,he=s-1 contains=javaSpecial,javaCommentStar,javaSpecialChar,@Spell
  syn region  javaComment2String   contained start=+"+	end=+$\|"+  contains=javaSpecial,javaSpecialChar,@Spell
  syn match   javaCommentCharacter contained "'\\[^']\{1,6\}'" contains=javaSpecialChar
  syn match   javaCommentCharacter contained "'\\''" contains=javaSpecialChar
  syn match   javaCommentCharacter contained "'[^\\]'"
  syn cluster javaCommentSpecial add=javaCommentString,javaCommentCharacter,javaNumber
  syn cluster javaCommentSpecial2 add=javaComment2String,javaCommentCharacter,javaNumber
endif
syn region  javaComment		 start="/\*"  end="\*/" contains=@javaCommentSpecial,javaTodo,@Spell
syn match   javaCommentStar	 contained "^\s*\*[^/]"me=e-1
syn match   javaCommentStar	 contained "^\s*\*$"
syn match   javaLineComment	 "//.*" contains=@javaCommentSpecial2,javaTodo,@Spell
JavaHiLink javaCommentString javaString
JavaHiLink javaComment2String javaString
JavaHiLink javaCommentCharacter javaCharacter

syn cluster javaTop add=javaComment,javaLineComment

syntax case ignore
" syntax coloring for javadoc comments (HTML)
syntax include @javaHtml <sfile>:p:h/html.vim
unlet b:current_syntax
" HTML enables spell checking for all text that is not in a syntax item. This
" is wrong for Java (all identifiers would be spell-checked), so it's undone
" here.
syntax spell default

syn region  javaDocComment	start="/\*\*"  end="\*/" keepend contains=javaCommentTitle,@javaHtml,javaDocTags,javaDocSeeTag,javaTodo,@Spell
syn region  javaCommentTitle	contained matchgroup=javaDocComment start="/\*\*"   matchgroup=javaCommentTitle keepend end="\.$" end="\.[ \t\r<&]"me=e-1 end="[^{]@"me=s-2,he=s-1 end="\*/"me=s-1,he=s-1 contains=@javaHtml,javaCommentStar,javaTodo,@Spell,javaDocTags,javaDocSeeTag

syn region javaDocTags	 contained start="{@\(link\|linkplain\|inherit[Dd]oc\|doc[rR]oot\|value\)" end="}"
syn match  javaDocTags	 contained "@\(param\|exception\|throws\|since\)\s\+\S\+" contains=javaDocParam
syn match  javaDocParam	 contained "\s\S\+"
syn match  javaDocTags	 contained "@\(version\|author\|return\|deprecated\|serial\|serialField\|serialData\)\>"
syn region javaDocSeeTag	 contained matchgroup=javaDocTags start="@see\s\+" matchgroup=NONE end="\_."re=e-1 contains=javaDocSeeTagParam
syn match  javaDocSeeTagParam  contained @"\_[^"]\+"\|<a\s\+\_.\{-}</a>\|\(\k\|\.\)*\(#\k\+\((\_[^)]\+)\)\=\)\=@ extend
syntax case match

" match the special comment /**/
syn match   javaComment		 "/\*\*/"

" Strings and constants
syn match   javaSpecialError	 contained "\\."
syn match   javaSpecialCharError contained "[^']"
syn match   javaSpecialChar	 contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)"
syn region  javaString		start=+"+ end=+"+ end=+$+ contains=javaSpecialChar,javaSpecialError,@Spell
" next line disabled, it can cause a crash for a long line
"syn match   javaStringError	  +"\([^"\\]\|\\.\)*$+
syn match   javaCharacter	 "'[^']*'" contains=javaSpecialChar,javaSpecialCharError
syn match   javaCharacter	 "'\\''" contains=javaSpecialChar
syn match   javaCharacter	 "'[^\\]'"
syn match   javaNumber		 "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   javaNumber		 "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   javaNumber		 "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match   javaNumber		 "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

" unicode characters
syn match   javaSpecial "\\u\d\{4\}"

syn cluster javaTop add=javaString,javaCharacter,javaNumber,javaSpecial,javaStringError

if exists("java_highlight_functions")
  if java_highlight_functions == "indent"
    syn match  javaFuncDef "^\(\t\| \{8\}\)[_$a-zA-Z][_$a-zA-Z0-9_. \[\]]*([^-+*/()]*)" contains=javaScopeDecl,javaType,javaStorageClass,@javaClasses
    syn region javaFuncDef start=+^\(\t\| \{8\}\)[$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*,\s*+ end=+)+ contains=javaScopeDecl,javaType,javaStorageClass,@javaClasses
    syn match  javaFuncDef "^  [$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*)" contains=javaScopeDecl,javaType,javaStorageClass,@javaClasses
    syn region javaFuncDef start=+^  [$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*,\s*+ end=+)+ contains=javaScopeDecl,javaType,javaStorageClass,@javaClasses
  else
    " This line catches method declarations at any indentation>0, but it assumes
    " two things:
    "	1. class names are always capitalized (ie: Button)
    "	2. method names are never capitalized (except constructors, of course)
    syn region javaFuncDef start=+^\s\+\(\(public\|protected\|private\|static\|abstract\|final\|native\|synchronized\)\s\+\)*\(\(void\|boolean\|char\|byte\|short\|int\|long\|float\|double\|\([A-Za-z_][A-Za-z0-9_$]*\.\)*[A-Z][A-Za-z0-9_$]*\)\(<[^>]*>\)\=\(\[\]\)*\s\+[a-z][A-Za-z0-9_$]*\|[A-Z][A-Za-z0-9_$]*\)\s*([^0-9]+ end=+)+ contains=javaScopeDecl,javaType,javaStorageClass,javaComment,javaLineComment,@javaClasses
  endif
  syn match  javaBraces  "[{}]"
  syn cluster javaTop add=javaFuncDef,javaBraces
endif

if exists("java_highlight_debug")

  " Strings and constants
  syn match   javaDebugSpecial		contained "\\\d\d\d\|\\."
  syn region  javaDebugString		contained start=+"+  end=+"+  contains=javaDebugSpecial
  syn match   javaDebugStringError	+"\([^"\\]\|\\.\)*$+
  syn match   javaDebugCharacter	contained "'[^\\]'"
  syn match   javaDebugSpecialCharacter contained "'\\.'"
  syn match   javaDebugSpecialCharacter contained "'\\''"
  syn keyword javaDebugBoolean		contained true false
  syn keyword javaDebugType		contained null this super
  syn region javaDebugParen  start=+(+ end=+)+ contained contains=javaDebug.*,javaDebugParen

  " to make this work you must define the highlighting for these groups
  syn match javaDebug "\<System\.\(out\|err\)\.print\(ln\)*\s*("me=e-1 contains=javaDebug.* nextgroup=javaDebugParen
  syn match javaDebug "\<p\s*("me=e-1 contains=javaDebug.* nextgroup=javaDebugParen
  syn match javaDebug "[A-Za-z][a-zA-Z0-9_]*\.printStackTrace\s*("me=e-1 contains=javaDebug.* nextgroup=javaDebugParen
  syn match javaDebug "\<trace[SL]\=\s*("me=e-1 contains=javaDebug.* nextgroup=javaDebugParen

  syn cluster javaTop add=javaDebug

  if version >= 508 || !exists("did_c_syn_inits")
    JavaHiLink javaDebug		 Debug
    JavaHiLink javaDebugString		 DebugString
    JavaHiLink javaDebugStringError	 javaError
    JavaHiLink javaDebugType		 DebugType
    JavaHiLink javaDebugBoolean		 DebugBoolean
    JavaHiLink javaDebugNumber		 Debug
    JavaHiLink javaDebugSpecial		 DebugSpecial
    JavaHiLink javaDebugSpecialCharacter DebugSpecial
    JavaHiLink javaDebugCharacter	 DebugString
    JavaHiLink javaDebugParen		 Debug

    JavaHiLink DebugString		 String
    JavaHiLink DebugSpecial		 Special
    JavaHiLink DebugBoolean		 Boolean
    JavaHiLink DebugType		 Type
  endif
endif

if exists("java_mark_braces_in_parens_as_errors")
  syn match javaInParen		 contained "[{}]"
  JavaHiLink javaInParen	javaError
  syn cluster javaTop add=javaInParen
endif

" catch errors caused by wrong parenthesis
syn region  javaParenT	transparent matchgroup=javaParen  start="("  end=")" contains=@javaTop,javaParenT1
syn region  javaParenT1 transparent matchgroup=javaParen1 start="(" end=")" contains=@javaTop,javaParenT2 contained
syn region  javaParenT2 transparent matchgroup=javaParen2 start="(" end=")" contains=@javaTop,javaParenT  contained
syn match   javaParenError	 ")"
" catch errors caused by wrong square parenthesis
syn region  javaParenT	transparent matchgroup=javaParen  start="\["  end="\]" contains=@javaTop,javaParenT1
syn region  javaParenT1 transparent matchgroup=javaParen1 start="\[" end="\]" contains=@javaTop,javaParenT2 contained
syn region  javaParenT2 transparent matchgroup=javaParen2 start="\[" end="\]" contains=@javaTop,javaParenT  contained
syn match   javaParenError	 "\]"

JavaHiLink javaParenError	javaError

if !exists("java_minlines")
  let java_minlines = 10
endif
exec "syn sync ccomment javaComment minlines=" . java_minlines

" The default highlighting.
if version >= 508 || !exists("did_java_syn_inits")
  if version < 508
    let did_java_syn_inits = 1
  endif
  JavaHiLink javaFuncDef		Function
  JavaHiLink javaVarArg			Function
  JavaHiLink javaBraces			Function
  JavaHiLink javaBranch			Conditional
  JavaHiLink javaUserLabelRef		javaUserLabel
  JavaHiLink javaLabel			Label
  JavaHiLink javaUserLabel		Label
  JavaHiLink javaConditional		Conditional
  JavaHiLink javaRepeat			Repeat
  JavaHiLink javaExceptions		Exception
  JavaHiLink javaAssert			Statement
  JavaHiLink javaStorageClass		StorageClass
  JavaHiLink javaMethodDecl		javaStorageClass
  JavaHiLink javaClassDecl		javaStorageClass
  JavaHiLink javaScopeDecl		javaStorageClass
  JavaHiLink javaBoolean		Boolean
  JavaHiLink javaSpecial		Special
  JavaHiLink javaSpecialError		Error
  JavaHiLink javaSpecialCharError	Error
  JavaHiLink javaString			String
  JavaHiLink javaCharacter		Character
  JavaHiLink javaSpecialChar		SpecialChar
  JavaHiLink javaNumber			Number
  JavaHiLink javaError			Error
  JavaHiLink javaStringError		Error
  JavaHiLink javaStatement		Statement
  JavaHiLink javaOperator		Operator
  JavaHiLink javaComment		Comment
  JavaHiLink javaDocComment		Comment
  JavaHiLink javaLineComment		Comment
  JavaHiLink javaConstant		Constant
  JavaHiLink javaTypedef		Typedef
  JavaHiLink javaTodo			Todo
  JavaHiLink javaAnnotation		PreProc

  JavaHiLink javaCommentTitle		SpecialComment
  JavaHiLink javaDocTags		Special
  JavaHiLink javaDocParam		Function
  JavaHiLink javaDocSeeTagParam		Function
  JavaHiLink javaCommentStar		javaComment

  JavaHiLink javaType			Type
  JavaHiLink javaExternal		Include

  JavaHiLink htmlComment		Special
  JavaHiLink htmlCommentPart		Special
  JavaHiLink javaSpaceError		Error
endif

delcommand JavaHiLink

let b:current_syntax = "java"

let b:spell_options="contained"

" vim: ts=8
