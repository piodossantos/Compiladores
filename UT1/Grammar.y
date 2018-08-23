{
module Grammar where
import Tokens
import Data.Fixed
import Data.List
}

%name parseCalc
%tokentype { Token }
%error { parseError }

%token
  num {Num $$}
  'T' {Truel}
  'F' {Falsel} 
  '*' {Mul} 
  '/' {Div} 
  '//' {IDiv}
  '%' {Mod} 
  '+' {Suml} 
  '-' {Diffl}
  '==' {Equals}
  '!=' {Different}
  '<' {Minor}
  '>' {Greater}
  '<=' {MinorE}
  '>=' {GreaterE}
  '!' {Notl}
  '&&' {Andl}
  '||' {Orl}
  '(' {OBrace}
  ')' {CBrace}
  '^' {Pot}
  '[' {LSquare}
  ']' {RSquare}
  ',' {Coma}
  '#' {HashTag}
  'e' {Exists}




%nonassoc '>' '<' '<=' '>=' '==' '!='
%left '#'
%left 'e'
%left '||'
%left '&&'
%right '!'
%left '+' '-'
%left '*' '/' '%' '//'
%left '^'
%left ','
%left NEG
%%


Expresion : BExpresion {(EBoolean $1)}
    | AExpresion {(ENumerical $1)}
    | List {ListExpresion $1}


List : '['']' {[]}
    | '[' ElementList ']' {$2}
    | '(' List ')' { EParent $2}
    | List '+' List {EConcat $1 $3}


ElementList :
    List {[(ListExpresion $1)]}
    |AExpresion {[(ENumerical $1)]}
    |BExpresion {[(EBoolean $1)]}
    |ElementList ',' List {$1 ++ [(ListExpresion $3)]}
    |ElementList ',' AExpresion {$1 ++ [(ENumerical $3)]}
    |ElementList ',' BExpresion {$1 ++ [(EBoolean $3)]}

BExpresion :
    'T' {Etrue}
    |'F'{Efalse}
    |AExpresion '==' AExpresion {EEq $1 $3}
    | AExpresion '!=' AExpresion {EDiff $1 $3}
    | BExpresion '==' BExpresion {EEq $1 $3}
    | BExpresion '!=' BExpresion {EDiff $1 $3}
    | AExpresion '<' AExpresion {EMinor $1 $3 }
    | AExpresion '>' AExpresion {EGreater $1 $3}
    | AExpresion '<=' AExpresion {EMinorE $1 $3 }
    | AExpresion '>=' AExpresion {EGreaterE $1 $3}
    | '!' BExpresion {ENegation $2}
    | BExpresion '&&' BExpresion { EConjuntion $1 $3}
    | BExpresion '||' BExpresion { EDisyuntion $1 $3}
    | '(' BExpresion ')' {EParent $2}
    | List '!=' List {EDiff $1 $3}
    | List '==' List {EEq $1 $3}
    | List 'e' List {EMember $1 $3}
    | AExpresion 'e' List {EMember $1 $3}
    | BExpresion 'e' List {EMember $1 $3}


AExpresion : num {ENum (read $1::Double)}
    | AExpresion '*' AExpresion {EMul $1 $3}
    | AExpresion '/' AExpresion {EDiv $1 $3}
    | AExpresion '^' AExpresion {EPot $1 $3}
    | AExpresion '//' AExpresion {EIDiv $1 $3}
    | AExpresion '%' AExpresion {EMod $1 $3}
    | AExpresion '+' AExpresion {EAdd $1 $3 }
    | AExpresion '-' AExpresion {ESub $1 $3}
    | '-' AExpresion %prec NEG { ENeg $2 }
    | '(' AExpresion ')' {EParent $2}
    |'#' List  { ECount   (ListExpresion $2) }


{
parseError :: [Token] -> a
parseError _ = error "Parse error"


data Expresion = ListExpresion [Expresion] | 
    EBoolean Expresion|
    ENumerical Expresion|
    EConcat Expresion Expresion|
    Etrue|
    Efalse|
    ENum Double|
    EEq Expresion Expresion|
    EDiff Expresion Expresion|
    EMinor Expresion Expresion|
    EGreater Expresion Expresion|
    EMinorE Expresion Expresion|
    EGreaterE Expresion Expresion|
    ENegation Expresion |
    EConjuntion Expresion Expresion|
    EDisyuntion Expresion Expresion|
    EMember Expresion Expresion|
    EAdd Expresion Expresion|
    ESub Expresion Expresion|
    EDiv Expresion Expresion|
    EMul Expresion Expresion|
    EIDiv Expresion Expresion|
    EPot Expresion Expresion|
    EMod Expresion Expresion|
    ENeg Expresion|
    ECount Expresion|
    EParent Expresion
    deriving(Show,Eq,Ord)


unparse::Expresion->String
unparse  (ListExpresion x) = "["++(foldr (\a b-> a ++ if b==[] then b else "," ++ b) "" l)++"]"
    where
        l= map (unparse) x

unparse (ENumerical a) = unparse a
unparse (EBoolean a)= unparse a
unparse (EConcat a b) = (unparse a) ++ "++" ++ (unparse b)
unparse Etrue= "true"
unparse Efalse = "false"
unparse (ENum a)= show a
unparse (EEq a b)= (unparse a) ++ "==" ++ (unparse b)
unparse (EDiff a b) = (unparse a) ++ "/=" ++ (unparse b)
unparse (EMinor a b) = (unparse a) ++ "<" ++ (unparse b)
unparse (EGreater a b) = (unparse a) ++ ">" ++ (unparse b)
unparse (EMinorE a b) = (unparse a) ++ "<=" ++ (unparse b)
unparse (EGreaterE a b) = (unparse a) ++ ">=" ++ (unparse b)
unparse (ENegation a) = "!"++(unparse a)
unparse (EConjuntion a b )= (unparse a) ++ "&&" ++ (unparse b)
unparse (EDisyuntion a b) = (unparse a) ++ "||" ++ (unparse b)
unparse (EMember a b) = (unparse a) ++ "<-" ++ (unparse b)
unparse (EAdd a b) = (unparse a) ++ "+" ++ (unparse b)
unparse (ESub a b) = (unparse a) ++ "-" ++ (unparse b)
unparse (EDiv a b )= (unparse a) ++ "/" ++ (unparse b)
unparse (EMul a b) = (unparse a) ++ "*" ++ (unparse b)
unparse (EIDiv a b )= (unparse a) ++ "//" ++ (unparse b)
unparse (EPot a b )= (unparse a) ++ "^"  ++ (unparse b)
unparse (EMod a b) = (unparse a) ++ "%" ++ (unparse b)
unparse (ENeg a) = "-" ++ (unparse a)
unparse (ECount a) = "#"++(unparse a)
unparse (EParent a) = unparse a
main = do 
    contents <- getLine
    putStrLn (show (parseCalc (alexScanTokens  contents)))
    main
}