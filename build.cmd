@echo Off
set config=%1
if "%config%" == "" (
   set config=Release
)
 
set version=6.0.0-beta8-16000
if not "%PackageVersion%" == "" (
   set version=%PackageVersion%
)


set nuget=
if "%nuget%" == "" (
	set nuget=nuget
)

%MSBuild% vNext\WebApiOData.sln /p:Configuration="%config%" /m /v:M /fl /flp:LogFile=msbuild.log;Verbosity=diag /nr:false

mkdir Build
mkdir Build\lib
mkdir Build\lib\net40

