�1
SE:\src\NewGenSource\NorthwindBackend\Sennedjem\WebAPI\Controllers\AuthController.cs
	namespace

 	
WebAPI


 
.

 
Controllers

 
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 

] 
public 

class 
AuthController 
:  !

Controller" ,
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
AuthController 
( 
	IMediator '
mediator( 0
,0 1
IConfiguration2 @

)N O
{ 	
	_mediator 
= 
mediator  
;  !
_configuration 
= 

;* +
}   	
['' 	 
ProducesResponseType''	 
('' 
typeof'' $
(''$ %
LoginUserResult''% 4
)''4 5
,''5 6
$num''7 :
)'': ;
]''; <
[(( 	
AllowAnonymous((	 
](( 
[)) 	
HttpPost))	 
()) 
$str)) 
))) 
])) 
public** 
async** 
Task** 
<** 

>**' (
Login**) .
(**. /
[**/ 0
FromBody**0 8
]**8 9
LoginUserQuery**9 G

loginModel**H R
)**R S
{++ 	
var,, 
result,, 
=,, 
await,, 
	_mediator,, (
.,,( )
Send,,) -
(,,- .

loginModel,,. 8
),,8 9
;,,9 :
if-- 
(-- 
result-- 
.-- 
Success-- 
)-- 
return.. 
Ok.. 
(.. 
result..  
...  !
Data..! %
)..% &
;..& '
return// 
Unauthorized// 
(//  
result//  &
.//& '
Message//' .
)//. /
;/// 0
}00 	
[88 	 
ProducesResponseType88	 
(88 
typeof88 $
(88$ %
SFwToken88% -
)88- .
,88. /
$num880 3
)883 4
]884 5
[99 	
AllowAnonymous99	 
]99 
[:: 	
HttpPost::	 
(:: 
$str:: 
):: 
]:: 
public;; 
async;; 
Task;; 
<;; 

>;;' (
Verification;;) 5
(;;5 6
[;;6 7
FromBody;;7 ?
];;? @
VerifyOTPCommand;;@ P
mobileLogin;;Q \
);;\ ]
{<< 	
var== 
result== 
=== 
await== 
	_mediator== (
.==( )
Send==) -
(==- .
mobileLogin==. 9
)==9 :
;==: ;
if>> 
(>> 
result>> 
.>> 
Success>> 
)>> 
return?? 
Ok?? 
(?? 
result??  
.??  !
Data??! %
)??% &
;??& '
return@@ 
Unauthorized@@ 
(@@  
result@@  &
.@@& '
Message@@' .
)@@. /
;@@/ 0
}AA 	
[HH 	
AllowAnonymousHH	 
]HH 
[II 	
HttpPostII	 
(II 
$strII 
)II 
]II 
publicJJ 
asyncJJ 
TaskJJ 
<JJ 

>JJ' (
RegisterJJ) 1
(JJ1 2
[JJ2 3
FromBodyJJ3 ;
]JJ; <
RegisterUserJJ< H
.JJH I
CommandJJI P

createUserJJQ [
)JJ[ \
{KK 	
varLL 
resultLL 
=LL 
awaitLL 
	_mediatorLL (
.LL( )
SendLL) -
(LL- .

createUserLL. 8
)LL8 9
;LL9 :
ifMM 
(MM 
resultMM 
.MM 
SuccessMM 
)MM 
returnNN 
OkNN 
(NN 
resultNN  
)NN  !
;NN! "
returnPP 

BadRequestPP 
(PP 
resultPP $
)PP$ %
;PP% &
}QQ 	
[XX 	
HttpPutXX	 
(XX 
$strXX !
)XX! "
]XX" #
publicYY 
asyncYY 
TaskYY 
<YY 

>YY' (
ForgotPasswordYY) 7
(YY7 8
[YY8 9
FromBodyYY9 A
]YYA B!
ForgotPasswordCommandYYB W
forgotPasswordYYX f
)YYf g
{ZZ 	
var[[ 
result[[ 
=[[ 
await[[ 
	_mediator[[ (
.[[( )
Send[[) -
([[- .
forgotPassword[[. <
)[[< =
;[[= >
if\\ 
(\\ 
result\\ 
.\\ 
Success\\ 
)\\ 
return]] 
Ok]] 
(]] 
result]]  
)]]  !
;]]! "
return__ 

BadRequest__ 
(__ 
result__ $
)__$ %
;__% &
}`` 	
[gg 	
HttpPostgg	 
(gg 
$strgg 
)gg 
]gg 
publichh 

	LoginTesthh &
(hh& '
)hh' (
{ii 	
varjj 
authjj 
=jj 
Requestjj 
.jj 
Headersjj &
[jj& '
$strjj' 6
]jj6 7
;jj7 8
varkk 
tokenkk 
=kk 
newkk 
	JwtHelperkk %
(kk% &
_configurationkk& 4
)kk4 5
.kk5 6
DecodeTokenkk6 A
(kkA B
authkkB F
)kkF G
;kkG H
returnll 
Okll 
(ll 
tokenll 
)ll 
;ll 
}mm 	
}nn 
}oo �
YE:\src\NewGenSource\NorthwindBackend\Sennedjem\WebAPI\Controllers\ManagementController.cs
	namespace 	
WebAPI
 
. 
Controllers 
{ 
[

 
	Authorize

 
]

 
[ 
Route 

(
 
$str 
) 
] 
[ 

] 
public

class
ManagementController
:
ControllerBase
{ 
private 
readonly 
IActivityMonitor )
monitor* 1
;1 2
public  
ManagementController #
(# $
IActivityMonitor$ 4
monitor5 <
)< =
{ 	
this 
. 
monitor 
= 
monitor "
;" #
} 	
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
ActivityMonitor% 4
.4 5
ActivitySummary5 D
)D E
,E F
$numG J
)J K
]K L
[   	
HttpGet  	 
(   
$str   
)   
]    
public!! 
ActionResult!! 
Performance!! '
(!!' (
)!!( )
{"" 	
return## 
Ok## 
(## 
monitor## 
.## 
	Summarize## '
(##' (
)##( )
)##) *
;##* +
}$$ 	
}(( 
})) �
@E:\src\NewGenSource\NorthwindBackend\Sennedjem\WebAPI\Program.cs
	namespace		 	
WebAPI		
 
{

 
public 
class 
Program 
{ 
public 
static	 
void 
Main 
( 
string  
[  !
]! "
args# '
)' (
{ 
var 
logger 
= 
NLog 
. 
Web 
. 
NLogBuilder $
.$ %

(2 3
$str3 @
)@ A
.A B!
GetCurrentClassLoggerB W
(W X
)X Y
;Y Z
try 
{ 
logger 

.
 
Debug 
( 
$str 
) 
; 
CreateHostBuilder 
( 
args 
) 
. 
Build !
(! "
)" #
.# $
Run$ '
(' (
)( )
;) *
} 
catch 
(	 

	Exception
 
	exception 
) 
{ 
logger 

.
 
Error 
( 
	exception 
, 
$str 3
)3 4
;4 5
throw 	
;	 

}   
finally!! 

{"" 
NLog$$ 
.$$ 	

LogManager$$	 
.$$ 
Shutdown$$ 
($$ 
)$$ 
;$$ 
}%% 
}&& 
public,, 
static,,	 
IHostBuilder,, 
CreateHostBuilder,, .
(,,. /
string,,/ 5
[,,5 6
],,6 7
args,,8 <
),,< =
=>,,> @
Host-- 
.-- 	 
CreateDefaultBuilder--	 
(-- 
args-- "
)--" #
... %
UseServiceProviderFactory.. 
(..  
new..  #)
AutofacServiceProviderFactory..$ A
(..A B
)..B C
)..C D
.// $
ConfigureWebHostDefaults// 
(// 

webBuilder// )
=>//* ,
{00 

webBuilder11 
.11 

UseStartup11 
<11 
Startup11 #
>11# $
(11$ %
)11% &
;11& '
}22 
)22 
.33 
ConfigureLogging33 
(33 
logging33 
=>33 !
{44 
logging55 
.55
ClearProviders55 
(55 
)55 
;55 
logging66 
.66
SetMinimumLevel66 
(66 
	Microsoft66 '
.66' (

Extensions66( 2
.662 3
Logging663 :
.66: ;
LogLevel66; C
.66C D
Trace66D I
)66I J
;66J K
}77 
)77 
.88 
UseNLog88 
(88
)88 
;88 
}99 
}:: �B
@E:\src\NewGenSource\NorthwindBackend\Sennedjem\WebAPI\Startup.cs
	namespace 	
WebAPI
 
{ 
public 

partial 
class 
Startup  
:! "
Business# +
.+ ,
BussinessStartup, <
{ 
public 
Startup 
( 
IConfiguration %

,3 4
IHostEnvironment5 E
hostEnvironmentF U
)U V
:   
base   
(   

,    !
hostEnvironment  " 1
)  1 2
{!! 	
}"" 	
public-- 
override-- 
void-- 
ConfigureServices-- .
(--. /
IServiceCollection--/ A
services--B J
)--J K
{.. 	
services// 
.// 
AddControllers// #
(//# $
)//$ %
.11 
AddJsonOptions11 
(11  
options11  '
=>11( *
{22 
options33 
.33 !
JsonSerializerOptions33 1
.331 2

Converters332 <
.33< =
Add33= @
(33@ A
new33A D#
JsonStringEnumConverter33E \
(33\ ]
)33] ^
)33^ _
;33_ `
options44 
.44 !
JsonSerializerOptions44 1
.441 2
IgnoreNullValues442 B
=44C D
true44E I
;44I J
}55 
)55 
;66 
services88 
.88 
AddCors88 
(88 
options88 $
=>88% '
{99 
options:: 
.:: 
	AddPolicy:: !
(::! "
$str::" /
,::/ 0
builder;;$ +
=>;;, .
builder;;/ 6
.;;6 7
AllowAnyOrigin;;7 E
(;;E F
);;F G
.;;G H
AllowAnyMethod;;H V
(;;V W
);;W X
.;;X Y
AllowAnyHeader;;Y g
(;;g h
);;h i
);;i j
;;;j k
}<< 
)<<
;<< 
var>> 
tokenOptions>> 
=>> 

.>>, -

GetSection>>- 7
(>>7 8
$str>>8 F
)>>F G
.>>G H
Get>>H K
<>>K L
TokenOptions>>L X
>>>X Y
(>>Y Z
)>>Z [
;>>[ \
services@@ 
.@@ 
AddAuthentication@@ &
(@@& '
JwtBearerDefaults@@' 8
.@@8 9 
AuthenticationScheme@@9 M
)@@M N
.AA 
AddJwtBearerAA !
(AA! "
optionsAA" )
=>AA* ,
{BB 
optionsCC 
.CC  %
TokenValidationParametersCC  9
=CC: ;
newCC< ?%
TokenValidationParametersCC@ Y
{DD 
ValidateIssuerEE *
=EE+ ,
trueEE- 1
,EE1 2
ValidateAudienceFF ,
=FF- .
trueFF/ 3
,FF3 4
ValidateLifetimeGG ,
=GG- .
trueGG/ 3
,GG3 4
ValidIssuerHH '
=HH( )
tokenOptionsHH* 6
.HH6 7
IssuerHH7 =
,HH= >

=II* +
tokenOptionsII, 8
.II8 9
AudienceII9 A
,IIA B$
ValidateIssuerSigningKeyJJ 4
=JJ5 6
trueJJ7 ;
,JJ; <
IssuerSigningKeyKK ,
=KK- .
SecurityKeyHelperKK/ @
.KK@ A
CreateSecurityKeyKKA R
(KKR S
tokenOptionsKKS _
.KK_ `
SecurityKeyKK` k
)KKk l
}LL 
;LL 
}MM 
)MM 
;MM 
servicesNN 
.NN 

(NN" #
cNN# $
=>NN% '
{OO 
cPP 
.PP 
IncludeXmlCommentsPP $
(PP$ %
PathPP% )
.PP) *
ChangeExtensionPP* 9
(PP9 :
typeofPP: @
(PP@ A
StartupPPA H
)PPH I
.PPI J
AssemblyPPJ R
.PPR S
LocationPPS [
,PP[ \
$strPP] c
)PPc d
)PPd e
;PPe f
}QQ 
)QQ
;QQ 
baseSS 
.SS 
ConfigureServicesSS "
(SS" #
servicesSS# +
)SS+ ,
;SS, -
}TT 	
public\\ 
void\\ 
	Configure\\ 
(\\ 
IApplicationBuilder\\ 1
app\\2 5
,\\5 6
IWebHostEnvironment\\7 J
env\\K N
)\\N O
{]] 	
ServiceTool`` 
.`` 
ServiceProvider`` '
=``( )
app``* -
.``- .
ApplicationServices``. A
;``A B
varcc  
configurationManagercc $
=cc% &
appcc' *
.cc* +
ApplicationServicescc+ >
.cc> ?

GetServicecc? I
<ccI J 
ConfigurationManagerccJ ^
>cc^ _
(cc_ `
)cc` a
;cca b
switchdd 
(dd  
configurationManagerdd (
.dd( )
Modedd) -
)dd- .
{ee 
caseff 
ApplicationModeff $
.ff$ %
Developmentff% 0
:ff0 1
casegg 
ApplicationModegg $
.gg$ %
	Profilinggg% .
:gg. /
casehh 
ApplicationModehh $
.hh$ %
Staginghh% ,
:hh, -
breakjj 
;jj 
casekk 
ApplicationModekk $
.kk$ %

Productionkk% /
:kk/ 0
breakll 
;ll 
}mm 
appoo 
.oo %
UseDeveloperExceptionPageoo )
(oo) *
)oo* +
;oo+ ,
appqq 
.qq .
"ConfigureCustomExceptionMiddlewareqq 2
(qq2 3
)qq3 4
;qq4 5
appss 
.ss &
UseDbOperationClaimCreatorss *
(ss* +
)ss+ ,
;ss, -
apptt 
.tt 

UseSwaggertt 
(tt 
)tt 
;tt 
appvv 
.vv 
UseSwaggerUIvv 
(vv 
cvv 
=>vv !
{ww 
cxx 
.xx 
SwaggerEndpointxx !
(xx! "
$strxx" C
,xxC D
$strxxE J
)xxJ K
;xxK L
}zz 
)zz
;zz 
app{{ 
.{{ 
UseCors{{ 
({{ 
$str{{ %
){{% &
;{{& '
app}} 
.}} 
UseHttpsRedirection}} #
(}}# $
)}}$ %
;}}% &
app 
. 

UseRouting 
( 
) 
; 
app
�� 
.
�� 
UseAuthentication
�� !
(
��! "
)
��" #
;
��# $
app
�� 
.
�� 
UseAuthorization
��  
(
��  !
)
��! "
;
��" #
app
�� 
.
�� $
UseRequestLocalization
�� &
(
��& '
new
��' *(
RequestLocalizationOptions
��+ E
{
�� 
DefaultRequestCulture
�� %
=
��& '
new
��( +
RequestCulture
��, :
(
��: ;
$str
��; B
)
��B C
,
��C D
}
�� 
)
��
;
�� 
var
�� 
cultureInfo
�� 
=
�� 
new
�� !
CultureInfo
��" -
(
��- .
$str
��. 5
)
��5 6
;
��6 7
cultureInfo
�� 
.
�� 
DateTimeFormat
�� &
.
��& '
ShortTimePattern
��' 7
=
��8 9
$str
��: A
;
��A B
CultureInfo
�� 
.
�� )
DefaultThreadCurrentCulture
�� 3
=
��4 5
cultureInfo
��6 A
;
��A B
CultureInfo
�� 
.
�� +
DefaultThreadCurrentUICulture
�� 5
=
��6 7
cultureInfo
��8 C
;
��C D
app
�� 
.
�� 
UseStaticFiles
�� 
(
�� 
)
��  
;
��  !
app
�� 
.
�� 
UseEndpoints
�� 
(
�� 
	endpoints
�� &
=>
��' )
{
�� 
	endpoints
�� 
.
�� 
MapControllers
�� (
(
��( )
)
��) *
;
��* +
}
�� 
)
��
;
�� 
}
�� 	
}
�� 
}�� 