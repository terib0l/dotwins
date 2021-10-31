@echo off

cd ..

set GITBRANCH=
FOR /F %%i in ('git branch --show-current 2^> NUL') DO @SET GITBRANCH=%%i

if not "%GITBRANCH%" %== "" (
  PROMPT $E[32m%USERDOMAIN%$E[37m:$E[36m[$P] $E[31m$c%GITBRANCH%$f$_$E[37m$$ 
) else (
  PROMPT $E[32m%USERDOMAIN%$E[37m:$E[36m[$P]$_$E[37m$$ 
)

:end
set GITBRANCH=
