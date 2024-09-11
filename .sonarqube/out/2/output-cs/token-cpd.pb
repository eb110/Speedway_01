¾$
/C:\Speedway\Speedway_01\Speedway.API\Startup.cs
	namespace 	
SpeedwayBackend
 
{ 
public 

class 
Startup 
{		 
public

 
Startup

 
(

 
IConfiguration

 %
configuration

& 3
)

3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddCors 
( 
c 
=> !
{ 
c 
. 
	AddPolicy 
( 
$str )
,) *
opt+ .
=>/ 1
opt2 5
.5 6
AllowAnyOrigin6 D
(D E
)E F
.F G
AllowAnyMethodG U
(U V
)V W
.W X
AllowAnyHeaderX f
(f g
)g h
)h i
;i j
} 
) 
; 
services 
. #
AddControllersWithViews ,
(, -
)- .
.. /
AddNewtonsoftJson/ @
(@ A
optA D
=>E G
opt 
. 
SerializerSettings "
." #!
ReferenceLoopHandling# 8
=9 :

Newtonsoft; E
.E F
JsonF J
.J K!
ReferenceLoopHandlingK `
.` a
Ignorea g
)g h
. 
AddNewtonsoftJson "
(" #
opt# &
=>' )
opt* -
.- .
SerializerSettings. @
.@ A
ContractResolverA Q
=R S
newT W#
DefaultContractResolverX o
(o p
)p q
)q r
;r s
services 
. 
AddTransient !
<! "
IRunService" -
,- .

RunService/ 9
>9 :
(: ;
); <
. 
AddTransient !
<! "
IPointService" /
,/ 0
PointService1 =
>= >
(> ?
)? @
.   
AddTransient   !
<  ! "
ICountryService  " 1
,  1 2
CountryService  3 A
>  A B
(  B C
)  C D
;  D E
}!! 	
public## 
void## 
	Configure## 
(## 
IApplicationBuilder## 1
app##2 5
,##5 6
IWebHostEnvironment##7 J
env##K N
)##N O
{$$ 	
app&& 
.&& 
UseCors&& 
(&& 
opt&& 
=>&& 
opt&& "
.&&" #
AllowAnyOrigin&&# 1
(&&1 2
)&&2 3
.&&3 4
AllowAnyMethod&&4 B
(&&B C
)&&C D
.&&D E
AllowAnyHeader&&E S
(&&S T
)&&T U
)&&U V
;&&V W
if(( 
((( 
env(( 
.(( 
IsDevelopment((  
(((  !
)((! "
)((" #
{)) 
app** 
.** %
UseDeveloperExceptionPage** -
(**- .
)**. /
;**/ 0
}++ 
app-- 
.-- 

UseRouting-- 
(-- 
)-- 
;-- 
app// 
.// 
UseAuthorization//  
(//  !
)//! "
;//" #
app11 
.11 
UseEndpoints11 
(11 
	endpoints11 &
=>11' )
{22 
	endpoints33 
.33 
MapControllers33 (
(33( )
)33) *
;33* +
}44 
)44 
;44 
app66 
.66 
UseStaticFiles66 
(66 
new66 "
StaticFileOptions66# 4
{77 
FileProvider88 
=88 
new88 " 
PhysicalFileProvider88# 7
(887 8
Path99 
.99 
Combine99  
(99  !
	Directory99! *
.99* +
GetCurrentDirectory99+ >
(99> ?
)99? @
,99@ A
$str99B J
)99J K
)99K L
,99L M
RequestPath:: 
=:: 
$str:: '
};; 
);; 
;;; 
}<< 	
}== 
}>>  

/C:\Speedway\Speedway_01\Speedway.API\Program.cs
	namespace 	
SpeedwayBackend
 
{ 
public 

static 
class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public

 
static

 
IHostBuilder

 "
CreateHostBuilder

# 4
(

4 5
string

5 ;
[

; <
]

< =
args

> B
)

B C
=>

D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults %
(% &

webBuilder& 0
=>1 3
{ 

webBuilder 
. 

UseStartup %
<% &
Startup& -
>- .
(. /
)/ 0
;0 1
} 
) 
; 
} 
} ´
AC:\Speedway\Speedway_01\Speedway.API\Controllers\RunController.cs
	namespace 	
SpeedwayBackend
 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		 
RunController		 
:		  
ControllerBase		! /
{

 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
IRunService $
_runService% 0
;0 1
public 
RunController 
( 
IConfiguration +
configuration, 9
,9 :
IRunService; F

runServiceG Q
)Q R
{ 	
_configuration 
= 
configuration *
;* +
_runService 
= 

runService $
;$ %
} 	
[ 	
HttpGet	 
] 
public 

JsonResult 

GetAllRuns $
($ %
)% &
{ 	
string 
sqlDataSource  
=! "
_configuration# 1
.1 2
GetConnectionString2 E
(E F
$strF \
)\ ]
!] ^
;^ _
var 
result 
= 
_runService $
.$ %

GetAllRuns% /
(/ 0
sqlDataSource0 =
)= >
;> ?
return 
result 
; 
} 	
[ 	
HttpPost	 
] 
public 

JsonResult 
PostRunVersion (
(( )
Run) ,
run- 0
)0 1
{ 	
string 
sqlDataSource  
=! "
_configuration# 1
.1 2
GetConnectionString2 E
(E F
$strF \
)\ ]
!] ^
;^ _
var 
result 
= 
_runService $
.$ %
PostNewVersion% 3
(3 4
sqlDataSource4 A
,A B
runC F
)F G
;G H
return   
result   
;   
}!! 	
[## 	

HttpDelete##	 
(## 
$str## 
)## 
]## 
public$$ 

JsonResult$$ 
	DeleteRun$$ #
($$# $
int$$$ '
id$$( *
)$$* +
{%% 	
string&& 
sqlDataSource&&  
=&&! "
_configuration&&# 1
.&&1 2
GetConnectionString&&2 E
(&&E F
$str&&F \
)&&\ ]
!&&] ^
;&&^ _
var'' 
result'' 
='' 
_runService'' $
.''$ %
	DeleteRun''% .
(''. /
sqlDataSource''/ <
,''< =
id''> @
)''@ A
;''A B
return(( 
result(( 
;(( 
})) 	
[++ 	
HttpPut++	 
]++ 
public,, 

JsonResult,, 
	UpdateRun,, #
(,,# $
Run,,$ '
run,,( +
),,+ ,
{-- 	
string.. 
sqlDataSource..  
=..! "
_configuration..# 1
...1 2
GetConnectionString..2 E
(..E F
$str..F \
)..\ ]
!..] ^
;..^ _
var// 
result// 
=// 
_runService// $
.//$ %
	UpdateRun//% .
(//. /
sqlDataSource/// <
,//< =
run//> A
)//A B
;//B C
return00 
result00 
;00 
}11 	
}22 
}33 ÿ
CC:\Speedway\Speedway_01\Speedway.API\Controllers\PointController.cs
	namespace		 	
SpeedwayBackend		
 
.		 
Controllers		 %
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
PointController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
IPointService &
_pointService' 4
;4 5
public 
PointController 
( 
IConfiguration -
configuration. ;
,; <
IPointService= J
pointServiceK W
)W X
{ 	
_configuration 
= 
configuration *
;* +
_pointService 
= 
pointService (
;( )
} 	
[ 	
HttpGet	 
] 
public 

JsonResult 
GetAllPoints &
(& '
)' (
{ 	
string 
sqlDataSource  
=! "
_configuration# 1
.1 2
GetConnectionString2 E
(E F
$strF \
)\ ]
!] ^
;^ _
var 
result 
= 
_pointService &
.& '
GetAllPoints' 3
(3 4
sqlDataSource4 A
)A B
;B C
return 
result 
; 
} 	
[ 	
HttpPost	 
] 
public   

JsonResult   
PostPointVersion   *
(  * +
Point  + 0
point  1 6
)  6 7
{!! 	
string"" 
sqlDataSource""  
=""! "
_configuration""# 1
.""1 2
GetConnectionString""2 E
(""E F
$str""F \
)""\ ]
!""] ^
;""^ _
var## 
result## 
=## 
_pointService## &
.##& '
PostNewPointVersion##' :
(##: ;
sqlDataSource##; H
,##H I
point##J O
)##O P
;##P Q
return$$ 
result$$ 
;$$ 
}%% 	
['' 	

HttpDelete''	 
('' 
$str'' 
)'' 
]'' 
public(( 

JsonResult(( "
DeletePointVersionById(( 0
(((0 1
int((1 4
id((5 7
)((7 8
{)) 	
string** 
sqlDataSource**  
=**! "
_configuration**# 1
.**1 2
GetConnectionString**2 E
(**E F
$str**F \
)**\ ]
!**] ^
;**^ _
var++ 
result++ 
=++ 
_pointService++ &
.++& '
DeletePoint++' 2
(++2 3
sqlDataSource++3 @
,++@ A
id++B D
)++D E
;++E F
return,, 
result,, 
;,, 
}-- 	
[// 	
HttpPut//	 
]// 
public00 

JsonResult00 
UpdatePointVersion00 ,
(00, -
Point00- 2
point003 8
)008 9
{11 	
string22 
sqlDataSource22  
=22! "
_configuration22# 1
.221 2
GetConnectionString222 E
(22E F
$str22F \
)22\ ]
!22] ^
;22^ _
var33 
result33 
=33 
_pointService33 &
.33& '
UpdatePoint33' 2
(332 3
sqlDataSource333 @
,33@ A
point33B G
)33G H
;33H I
return44 
result44 
;44 
}55 	
}66 
}77 ¦*
EC:\Speedway\Speedway_01\Speedway.API\Controllers\CountryController.cs
	namespace

 	
SpeedwayBackend


 
.

 
Controllers

 %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
CountryController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
IWebHostEnvironment ,
_env- 1
;1 2
private 
readonly 
ICountryService (
_countryService) 8
;8 9
public 
CountryController  
(  !
IConfiguration! /
configuration0 =
,= >
IWebHostEnvironment? R
envS V
,V W
ICountryServiceX g
countryServiceh v
)v w
{ 	
_configuration 
= 
configuration *
;* +
_env 
= 
env 
; 
_countryService 
= 
countryService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 

JsonResult 
GetAllCountries )
() *
)* +
{ 	
string 
sqlDataSource  
=! "
_configuration# 1
.1 2
GetConnectionString2 E
(E F
$strF \
)\ ]
!] ^
;^ _
var   
result   
=   
_countryService   (
.  ( )
GetAllCountries  ) 8
(  8 9
sqlDataSource  9 F
)  F G
;  G H
return!! 
result!! 
;!! 
}"" 	
[$$ 	
HttpPost$$	 
]$$ 
public%% 

JsonResult%% 

AddCountry%% $
(%%$ %
Country%%% ,
country%%- 4
)%%4 5
{&& 	
string'' 
sqlDataSource''  
=''! "
_configuration''# 1
.''1 2
GetConnectionString''2 E
(''E F
$str''F \
)''\ ]
!''] ^
;''^ _
var(( 
result(( 
=(( 
_countryService(( (
.((( )

AddCountry(() 3
(((3 4
sqlDataSource((4 A
,((A B
country((C J
)((J K
;((K L
return)) 
result)) 
;)) 
}** 	
[,, 	

HttpDelete,,	 
(,, 
$str,, 
),, 
],, 
public-- 

JsonResult-- 
DeleteCountry-- '
(--' (
int--( +
id--, .
)--. /
{.. 	
string// 
sqlDataSource//  
=//! "
_configuration//# 1
.//1 2
GetConnectionString//2 E
(//E F
$str//F \
)//\ ]
!//] ^
;//^ _
var00 
result00 
=00 
_countryService00 (
.00( )
DeleteCountry00) 6
(006 7
sqlDataSource007 D
,00D E
id00F H
)00H I
;00I J
return11 
result11 
;11 
}22 	
[44 	
HttpPut44	 
]44 
public55 

JsonResult55 
UpdateCountry55 '
(55' (
Country55( /
country550 7
)557 8
{66 	
string77 
sqlDataSource77  
=77! "
_configuration77# 1
.771 2
GetConnectionString772 E
(77E F
$str77F \
)77\ ]
!77] ^
;77^ _
var88 
result88 
=88 
_countryService88 (
.88( )
UpdateCountry88) 6
(886 7
sqlDataSource887 D
,88D E
country88F M
)88M N
;88N O
return99 
result99 
;99 
}:: 	
[<< 	
Route<<	 
(<< 
$str<< 
)<< 
]<< 
[== 	
HttpPost==	 
]== 
public>> 

JsonResult>> 
SaveFlag>> "
(>>" #
)>># $
{?? 	
var@@ 
request@@ 
=@@ 
Request@@ !
.@@! "
Form@@" &
;@@& '
varAA 

postedFileAA 
=AA 
requestAA $
.AA$ %
FilesAA% *
[AA* +
$numAA+ ,
]AA, -
;AA- .
varBB 
fileNameBB 
=BB 

postedFileBB %
.BB% &
FileNameBB& .
;BB. /
varCC 
physicalPathCC 
=CC 
_envCC #
.CC# $
ContentRootPathCC$ 3
+CC4 5
$strCC6 F
+CCG H
fileNameCCI Q
;CCQ R
varDD 
resultDD 
=DD 
_countryServiceDD (
.DD( )
SaveFlagDD) 1
(DD1 2
physicalPathDD2 >
,DD> ?

postedFileDD@ J
)DDJ K
;DDK L
returnEE 
resultEE 
;EE 
}FF 	
}GG 
}HH 