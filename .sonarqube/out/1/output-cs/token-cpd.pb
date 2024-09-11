•>
6C:\Speedway\Speedway_01\Speedway.Service\RunService.cs
	namespace 	
Speedway
 
. 
Service 
{ 
public 

class 

RunService 
: 
IRunService )
{		 
public

 

JsonResult

 
	DeleteRun

 #
(

# $
string

$ *
sqlDataSource

+ 8
,

8 9
int

9 <
id

= ?
)

? @
{ 	
string 
query 
= 
$str A
;A B
	DataTable 
table 
= 
new !
	DataTable" +
(+ ,
), -
;- .
SqlDataReader 
myReader "
;" #
using 
( 
SqlConnection  
myCon! &
=' (
new) ,
SqlConnection- :
(: ;
sqlDataSource; H
)H I
)I J
{ 
myCon 
. 
Open 
( 
) 
; 
using 
( 

SqlCommand !
	myCommand" +
=, -
new. 1

SqlCommand2 <
(< =
query= B
,B C
myConD I
)I J
)J K
{ 
	myCommand 
. 

Parameters (
.( )
AddWithValue) 5
(5 6
$str6 ;
,; <
id= ?
)? @
;@ A
myReader 
= 
	myCommand (
.( )
ExecuteReader) 6
(6 7
)7 8
;8 9
table 
. 
Load 
( 
myReader '
)' (
;( )
myReader 
. 
Close "
(" #
)# $
;$ %
myCon 
. 
Close 
(  
)  !
;! "
} 
} 
return 
new 

JsonResult !
(! "
$str" /
)/ 0
;0 1
} 	
public 

JsonResult 

GetAllRuns $
($ %
string% +
sqlDataSource, 9
)9 :
{ 	
string   
query   
=   
$str   <
;  < =
	DataTable!! 
table!! 
=!! 
new!! !
	DataTable!!" +
(!!+ ,
)!!, -
;!!- .
SqlDataReader"" 
myReader"" "
;""" #
using## 
(## 
SqlConnection##  
myCon##! &
=##' (
new##) ,
SqlConnection##- :
(##: ;
sqlDataSource##; H
)##H I
)##I J
{$$ 
myCon%% 
.%% 
Open%% 
(%% 
)%% 
;%% 
using&& 
(&& 

SqlCommand&& !
	myCommand&&" +
=&&, -
new&&. 1

SqlCommand&&2 <
(&&< =
query&&= B
,&&B C
myCon&&D I
)&&I J
)&&J K
{'' 
myReader(( 
=(( 
	myCommand(( (
.((( )
ExecuteReader(() 6
(((6 7
)((7 8
;((8 9
table)) 
.)) 
Load)) 
()) 
myReader)) '
)))' (
;))( )
myReader** 
.** 
Close** "
(**" #
)**# $
;**$ %
myCon++ 
.++ 
Close++ 
(++  
)++  !
;++! "
},, 
}-- 
return.. 
new.. 

JsonResult.. !
(..! "
table.." '
)..' (
;..( )
}// 	
public11 

JsonResult11 
PostNewVersion11 (
(11( )
string11) /
sqlDataSource110 =
,11= >
Run11> A
run11B E
)11E F
{22 	
string33 
query33 
=33 
$str33 B
;33B C
	DataTable44 
table44 
=44 
new44 !
	DataTable44" +
(44+ ,
)44, -
;44- .
SqlDataReader55 
myReader55 "
;55" #
using66 
(66 
SqlConnection66  
myCon66! &
=66' (
new66) ,
SqlConnection66- :
(66: ;
sqlDataSource66; H
)66H I
)66I J
{77 
myCon88 
.88 
Open88 
(88 
)88 
;88 
using99 
(99 

SqlCommand99 !
	myCommand99" +
=99, -
new99. 1

SqlCommand992 <
(99< =
query99= B
,99B C
myCon99D I
)99I J
)99J K
{:: 
	myCommand;; 
.;; 

Parameters;; (
.;;( )
AddWithValue;;) 5
(;;5 6
$str;;6 >
,;;> ?
run;;@ C
.;;C D
Value;;D I
);;I J
;;;J K
myReader<< 
=<< 
	myCommand<< (
.<<( )
ExecuteReader<<) 6
(<<6 7
)<<7 8
;<<8 9
table== 
.== 
Load== 
(== 
myReader== '
)==' (
;==( )
myReader>> 
.>> 
Close>> "
(>>" #
)>># $
;>>$ %
myCon?? 
.?? 
Close?? 
(??  
)??  !
;??! "
}@@ 
}AA 
returnBB 
newBB 

JsonResultBB !
(BB! "
$strBB" 5
)BB5 6
;BB6 7
}CC 	
publicEE 

JsonResultEE 
	UpdateRunEE #
(EE# $
stringEE$ *
sqlDataSourceEE+ 8
,EE8 9
RunEE9 <
runEE= @
)EE@ A
{FF 	
stringGG 
queryGG 
=GG 
$strGG O
;GGO P
	DataTableHH 
tableHH 
=HH 
newHH !
	DataTableHH" +
(HH+ ,
)HH, -
;HH- .
SqlDataReaderII 
myReaderII "
;II" #
usingJJ 
(JJ 
SqlConnectionJJ  
myConJJ! &
=JJ' (
newJJ) ,
SqlConnectionJJ- :
(JJ: ;
sqlDataSourceJJ; H
)JJH I
)JJI J
{KK 
myConLL 
.LL 
OpenLL 
(LL 
)LL 
;LL 
usingMM 
(MM 

SqlCommandMM !
	myCommandMM" +
=MM, -
newMM. 1

SqlCommandMM2 <
(MM< =
queryMM= B
,MMB C
myConMMD I
)MMI J
)MMJ K
{NN 
	myCommandOO 
.OO 

ParametersOO (
.OO( )
AddWithValueOO) 5
(OO5 6
$strOO6 ;
,OO; <
runOO= @
.OO@ A
IdOOA C
)OOC D
;OOD E
	myCommandPP 
.PP 

ParametersPP (
.PP( )
AddWithValuePP) 5
(PP5 6
$strPP6 >
,PP> ?
runPP@ C
.PPC D
ValuePPD I
)PPI J
;PPJ K
myReaderQQ 
=QQ 
	myCommandQQ (
.QQ( )
ExecuteReaderQQ) 6
(QQ6 7
)QQ7 8
;QQ8 9
tableRR 
.RR 
LoadRR 
(RR 
myReaderRR '
)RR' (
;RR( )
myReaderSS 
.SS 
CloseSS "
(SS" #
)SS# $
;SS$ %
myConTT 
.TT 
CloseTT 
(TT  
)TT  !
;TT! "
}UU 
}VV 
returnWW 
newWW 

JsonResultWW !
(WW! "
$strWW" /
)WW/ 0
;WW0 1
}XX 	
}YY 
}ZZ ƒ>
8C:\Speedway\Speedway_01\Speedway.Service\PointService.cs
	namespace 	
Speedway
 
. 
Service 
{ 
public		 

class		 
PointService		 
:		 
IPointService		  -
{

 
public 

JsonResult 
DeletePoint %
(% &
string& ,
sqlDataSource- :
,: ;
int< ?
id@ B
)B C
{ 	
string 
query 
= 
$str C
;C D
	DataTable 
table 
= 
new !
	DataTable" +
(+ ,
), -
;- .
SqlDataReader 
myReader "
;" #
using 
( 
SqlConnection  
myCon! &
=' (
new) ,
SqlConnection- :
(: ;
sqlDataSource; H
)H I
)I J
{ 
myCon 
. 
Open 
( 
) 
; 
using 
( 

SqlCommand !
	myCommand" +
=, -
new. 1

SqlCommand2 <
(< =
query= B
,B C
myConD I
)I J
)J K
{ 
	myCommand 
. 

Parameters (
.( )
AddWithValue) 5
(5 6
$str6 ;
,; <
id= ?
)? @
;@ A
myReader 
= 
	myCommand (
.( )
ExecuteReader) 6
(6 7
)7 8
;8 9
table 
. 
Load 
( 
myReader '
)' (
;( )
myReader 
. 
Close "
(" #
)# $
;$ %
myCon 
. 
Close 
(  
)  !
;! "
} 
} 
return 
new 

JsonResult !
(! "
$str" 9
)9 :
;: ;
} 	
public 

JsonResult 
GetAllPoints &
(& '
string' -
sqlDataSource. ;
); <
{   	
string!! 
query!! 
=!! 
$str!! >
;!!> ?
	DataTable"" 
table"" 
="" 
new"" !
	DataTable""" +
(""+ ,
)"", -
;""- .
SqlDataReader## 
myReader## "
;##" #
using$$ 
($$ 
SqlConnection$$  
myCon$$! &
=$$' (
new$$) ,
SqlConnection$$- :
($$: ;
sqlDataSource$$; H
)$$H I
)$$I J
{%% 
myCon&& 
.&& 
Open&& 
(&& 
)&& 
;&& 
using'' 
('' 

SqlCommand'' !
	myCommand''" +
='', -
new''. 1

SqlCommand''2 <
(''< =
query''= B
,''B C
myCon''D I
)''I J
)''J K
{(( 
myReader)) 
=)) 
	myCommand)) (
.))( )
ExecuteReader))) 6
())6 7
)))7 8
;))8 9
table** 
.** 
Load** 
(** 
myReader** '
)**' (
;**( )
myReader++ 
.++ 
Close++ "
(++" #
)++# $
;++$ %
myCon,, 
.,, 
Close,, 
(,,  
),,  !
;,,! "
}-- 
}.. 
return// 
new// 

JsonResult// !
(//! "
table//" '
)//' (
;//( )
}00 	
public22 

JsonResult22 
PostNewPointVersion22 -
(22- .
string22. 4
sqlDataSource225 B
,22B C
Point22D I
point22J O
)22O P
{33 	
string44 
query44 
=44 
$str44 D
;44D E
	DataTable55 
table55 
=55 
new55 !
	DataTable55" +
(55+ ,
)55, -
;55- .
SqlDataReader66 
myReader66 "
;66" #
using77 
(77 
SqlConnection77  
myCon77! &
=77' (
new77) ,
SqlConnection77- :
(77: ;
sqlDataSource77; H
)77H I
)77I J
{88 
myCon99 
.99 
Open99 
(99 
)99 
;99 
using:: 
(:: 

SqlCommand:: !
	myCommand::" +
=::, -
new::. 1

SqlCommand::2 <
(::< =
query::= B
,::B C
myCon::D I
)::I J
)::J K
{;; 
	myCommand<< 
.<< 

Parameters<< (
.<<( )
AddWithValue<<) 5
(<<5 6
$str<<6 >
,<<> ?
point<<@ E
.<<E F
Value<<F K
)<<K L
;<<L M
myReader== 
=== 
	myCommand== (
.==( )
ExecuteReader==) 6
(==6 7
)==7 8
;==8 9
table>> 
.>> 
Load>> 
(>> 
myReader>> '
)>>' (
;>>( )
myReader?? 
.?? 
Close?? "
(??" #
)??# $
;??$ %
myCon@@ 
.@@ 
Close@@ 
(@@  
)@@  !
;@@! "
}AA 
}BB 
returnCC 
newCC 

JsonResultCC !
(CC! "
$strCC" /
)CC/ 0
;CC0 1
}DD 	
publicFF 

JsonResultFF 
UpdatePointFF %
(FF% &
stringFF& ,
sqlDataSourceFF- :
,FF: ;
PointFF< A
pointFFB G
)FFG H
{GG 	
stringHH 
queryHH 
=HH 
$strHH Q
;HHQ R
	DataTableII 
tableII 
=II 
newII !
	DataTableII" +
(II+ ,
)II, -
;II- .
SqlDataReaderJJ 
myReaderJJ "
;JJ" #
usingKK 
(KK 
SqlConnectionKK  
myConKK! &
=KK' (
newKK) ,
SqlConnectionKK- :
(KK: ;
sqlDataSourceKK; H
)KKH I
)KKI J
{LL 
myConMM 
.MM 
OpenMM 
(MM 
)MM 
;MM 
usingNN 
(NN 

SqlCommandNN !
	myCommandNN" +
=NN, -
newNN. 1

SqlCommandNN2 <
(NN< =
queryNN= B
,NNB C
myConNND I
)NNI J
)NNJ K
{OO 
	myCommandPP 
.PP 

ParametersPP (
.PP( )
AddWithValuePP) 5
(PP5 6
$strPP6 ;
,PP; <
pointPP= B
.PPB C
IdPPC E
)PPE F
;PPF G
	myCommandQQ 
.QQ 

ParametersQQ (
.QQ( )
AddWithValueQQ) 5
(QQ5 6
$strQQ6 >
,QQ> ?
pointQQ@ E
.QQE F
ValueQQF K
)QQK L
;QQL M
myReaderRR 
=RR 
	myCommandRR (
.RR( )
ExecuteReaderRR) 6
(RR6 7
)RR7 8
;RR8 9
tableSS 
.SS 
LoadSS 
(SS 
myReaderSS '
)SS' (
;SS( )
myReaderTT 
.TT 
CloseTT "
(TT" #
)TT# $
;TT$ %
myConUU 
.UU 
CloseUU 
(UU  
)UU  !
;UU! "
}VV 
}WW 
returnXX 
newXX 

JsonResultXX !
(XX! "
$strXX" /
)XX/ 0
;XX0 1
}YY 	
}ZZ 
}[[ »
7C:\Speedway\Speedway_01\Speedway.Service\IRunService.cs
	namespace 	
Speedway
 
. 
Service 
{ 
public 

	interface 
IRunService  
{ 

JsonResult 

GetAllRuns 
( 
string $
sqlDataSource% 2
)2 3
;3 4

JsonResult		 
PostNewVersion		 !
(		! "
string		" (
sqlDataSource		) 6
,		6 7
Run		8 ;
run		< ?
)		? @
;		@ A

JsonResult

 
	DeleteRun

 
(

 
string

 #
sqlDataSource

$ 1
,

1 2
int

3 6
id

7 9
)

9 :
;

: ;

JsonResult 
	UpdateRun 
( 
string #
sqlDataSource$ 1
,1 2
Run2 5
run6 9
)9 :
;: ;
} 
} ﬂ
9C:\Speedway\Speedway_01\Speedway.Service\IPointService.cs
	namespace 	
Speedway
 
. 
Service 
{ 
public 

	interface 
IPointService "
{ 

JsonResult 
GetAllPoints 
(  
string  &
sqlDataSource' 4
)4 5
;5 6

JsonResult		 
PostNewPointVersion		 &
(		& '
string		' -
sqlDataSource		. ;
,		; <
Point		= B
point		C H
)		H I
;		I J

JsonResult

 
DeletePoint

 
(

 
string

 %
sqlDataSource

& 3
,

3 4
int

5 8
id

9 ;
)

; <
;

< =

JsonResult 
UpdatePoint 
( 
string %
sqlDataSource& 3
,3 4
Point5 :
point; @
)@ A
;A B
} 
} ¢	
;C:\Speedway\Speedway_01\Speedway.Service\ICountryService.cs
	namespace 	
Speedway
 
. 
Service 
{ 
public 

	interface 
ICountryService $
{ 

JsonResult		 
GetAllCountries		 "
(		" #
string		# )
sqlDataSource		* 7
)		7 8
;		8 9

JsonResult

 

AddCountry

 
(

 
string

 $
sqlDataSource

% 2
,

2 3
Country

4 ;
country

< C
)

C D
;

D E

JsonResult 
DeleteCountry  
(  !
string! '
sqlDataSource( 5
,5 6
int7 :
id; =
)= >
;> ?

JsonResult 
UpdateCountry  
(  !
string! '
sqlDataSource( 5
,5 6
Country7 >
country? F
)F G
;G H

JsonResult 
SaveFlag 
( 
string "
path# '
,' (
	IFormFile) 2
file3 7
)7 8
;8 9
} 
} ÚJ
:C:\Speedway\Speedway_01\Speedway.Service\CountryService.cs
	namespace 	
Speedway
 
. 
Service 
{		 
public

 

class

 
CountryService

 
:

  !
ICountryService

" 1
{ 
public 

JsonResult 

AddCountry $
($ %
string% +
sqlDataSource, 9
,9 :
Country; B
countryC J
)J K
{ 	
string 
query 
= 
$str U
;U V
	DataTable 
table 
= 
new !
	DataTable" +
(+ ,
), -
;- .
SqlDataReader 
myReader "
;" #
using 
( 
SqlConnection  
myCon! &
=' (
new) ,
SqlConnection- :
(: ;
sqlDataSource; H
)H I
)I J
{ 
myCon 
. 
Open 
( 
) 
; 
using 
( 

SqlCommand !
	myCommand" +
=, -
new. 1

SqlCommand2 <
(< =
query= B
,B C
myConD I
)I J
)J K
{ 
	myCommand 
. 

Parameters (
.( )
AddWithValue) 5
(5 6
$str6 =
,= >
country? F
.F G
NameG K
)K L
;L M
	myCommand 
. 

Parameters (
.( )
AddWithValue) 5
(5 6
$str6 E
,E F
countryG N
.N O
FlagFileNameO [
)[ \
;\ ]
myReader 
= 
	myCommand (
.( )
ExecuteReader) 6
(6 7
)7 8
;8 9
table 
. 
Load 
( 
myReader '
)' (
;( )
myReader 
. 
Close "
(" #
)# $
;$ %
myCon 
. 
Close 
(  
)  !
;! "
} 
} 
return 
new 

JsonResult !
(! "
$str" 1
)1 2
;2 3
} 	
public!! 

JsonResult!! 
DeleteCountry!! '
(!!' (
string!!( .
sqlDataSource!!/ <
,!!< =
int!!> A
id!!B D
)!!D E
{"" 	
string## 
query## 
=## 
$str## F
;##F G
	DataTable$$ 
table$$ 
=$$ 
new$$ !
	DataTable$$" +
($$+ ,
)$$, -
;$$- .
SqlDataReader%% 
myReader%% "
;%%" #
using&& 
(&& 
SqlConnection&&  
myCon&&! &
=&&' (
new&&) ,
SqlConnection&&- :
(&&: ;
sqlDataSource&&; H
)&&H I
)&&I J
{'' 
myCon(( 
.(( 
Open(( 
((( 
)(( 
;(( 
using)) 
()) 

SqlCommand)) !
	myCommand))" +
=)), -
new)). 1

SqlCommand))2 <
())< =
query))= B
,))B C
myCon))D I
)))I J
)))J K
{** 
	myCommand++ 
.++ 

Parameters++ (
.++( )
AddWithValue++) 5
(++5 6
$str++6 ;
,++; <
id++= ?
)++? @
;++@ A
myReader,, 
=,, 
	myCommand,, (
.,,( )
ExecuteReader,,) 6
(,,6 7
),,7 8
;,,8 9
table-- 
.-- 
Load-- 
(-- 
myReader-- '
)--' (
;--( )
myReader.. 
... 
Close.. "
(.." #
)..# $
;..$ %
myCon// 
.// 
Close// 
(//  
)//  !
;//! "
}00 
}11 
return22 
new22 

JsonResult22 !
(22! "
$str22" 3
)223 4
;224 5
}33 	
public55 

JsonResult55 
GetAllCountries55 )
(55) *
string55* 0
sqlDataSource551 >
)55> ?
{66 	
string77 
query77 
=77 
$str77 N
;77N O
	DataTable88 
table88 
=88 
new88 !
	DataTable88" +
(88+ ,
)88, -
;88- .
SqlDataReader99 
myReader99 "
;99" #
using:: 
(:: 
SqlConnection::  
myCon::! &
=::' (
new::) ,
SqlConnection::- :
(::: ;
sqlDataSource::; H
)::H I
)::I J
{;; 
myCon<< 
.<< 
Open<< 
(<< 
)<< 
;<< 
using== 
(== 

SqlCommand== !
	myCommand==" +
===, -
new==. 1

SqlCommand==2 <
(==< =
query=== B
,==B C
myCon==D I
)==I J
)==J K
{>> 
myReader?? 
=?? 
	myCommand?? (
.??( )
ExecuteReader??) 6
(??6 7
)??7 8
;??8 9
table@@ 
.@@ 
Load@@ 
(@@ 
myReader@@ '
)@@' (
;@@( )
myReaderAA 
.AA 
CloseAA "
(AA" #
)AA# $
;AA$ %
myConBB 
.BB 
CloseBB 
(BB  
)BB  !
;BB! "
}CC 
}DD 
returnEE 
newEE 

JsonResultEE !
(EE! "
tableEE" '
)EE' (
;EE( )
}FF 	
publicHH 

JsonResultHH 
UpdateCountryHH '
(HH' (
stringHH( .
sqlDataSourceHH/ <
,HH< =
CountryHH> E
countryHHF M
)HHM N
{II 	
stringJJ 
queryJJ 
=JJ 
$strJJ p
;JJp q
	DataTableKK 
tableKK 
=KK 
newKK !
	DataTableKK" +
(KK+ ,
)KK, -
;KK- .
SqlDataReaderLL 
myReaderLL "
;LL" #
usingMM 
(MM 
SqlConnectionMM  
myConMM! &
=MM' (
newMM) ,
SqlConnectionMM- :
(MM: ;
sqlDataSourceMM; H
)MMH I
)MMI J
{NN 
myConOO 
.OO 
OpenOO 
(OO 
)OO 
;OO 
usingPP 
(PP 

SqlCommandPP !
	myCommandPP" +
=PP, -
newPP. 1

SqlCommandPP2 <
(PP< =
queryPP= B
,PPB C
myConPPD I
)PPI J
)PPJ K
{QQ 
	myCommandRR 
.RR 

ParametersRR (
.RR( )
AddWithValueRR) 5
(RR5 6
$strRR6 ;
,RR; <
countryRR= D
.RRD E
IdRRE G
)RRG H
;RRH I
	myCommandSS 
.SS 

ParametersSS (
.SS( )
AddWithValueSS) 5
(SS5 6
$strSS6 =
,SS= >
countrySS? F
.SSF G
NameSSG K
)SSK L
;SSL M
	myCommandTT 
.TT 

ParametersTT (
.TT( )
AddWithValueTT) 5
(TT5 6
$strTT6 E
,TTE F
countryTTG N
.TTN O
FlagFileNameTTO [
)TT[ \
;TT\ ]
myReaderUU 
=UU 
	myCommandUU (
.UU( )
ExecuteReaderUU) 6
(UU6 7
)UU7 8
;UU8 9
tableVV 
.VV 
LoadVV 
(VV 
myReaderVV '
)VV' (
;VV( )
myReaderWW 
.WW 
CloseWW "
(WW" #
)WW# $
;WW$ %
myConXX 
.XX 
CloseXX 
(XX  
)XX  !
;XX! "
}YY 
}ZZ 
return[[ 
new[[ 

JsonResult[[ !
([[! "
$str[[" 3
)[[3 4
;[[4 5
}\\ 	
public^^ 

JsonResult^^ 
SaveFlag^^ "
(^^" #
string^^# )
path^^* .
,^^. /
	IFormFile^^0 9
file^^: >
)^^> ?
{__ 	
try`` 
{aa 
usingbb 
(bb 
varbb 
streambb !
=bb" #
newbb$ '

FileStreambb( 2
(bb2 3
pathbb3 7
,bb7 8
FileModebb9 A
.bbA B
CreatebbB H
)bbH I
)bbI J
{cc 
filedd 
.dd 
CopyTodd 
(dd  
streamdd  &
)dd& '
;dd' (
}ee 
returnff 
newff 

JsonResultff %
(ff% &
fileff& *
.ff* +
FileNameff+ 3
)ff3 4
;ff4 5
}gg 
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh  
{ii 
returnjj 
newjj 

JsonResultjj %
(jj% &
$strjj& 4
)jj4 5
;jj5 6
}kk 
}ll 	
}mm 
}nn 