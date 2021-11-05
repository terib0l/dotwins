@echo off

del %*

SET GITBRANCH=
SET GITCHANGED=

FOR /F %%i in ('git branch --show-current 2^> NUL') DO SET GITBRANCH=%%i

IF NOT "%GITBRANCH%" == "" (
    FOR /F %%i in ('git status --short 2^> NUL') DO (
      SET GITCHANGED=%%i
      GOTO :inner
    )
    :inner
    IF NOT "%GITCHANGED%" == "" (
      PROMPT $E[32m%USERDOMAIN%$E[37m:$E[36m[$P] $E[31m$c%GITBRANCH% *$f$_$E[37m$$ 
      GOTO :end
    ) ELSE (
      PROMPT $E[32m%USERDOMAIN%$E[37m:$E[36m[$P] $E[31m$c%GITBRANCH%$f$_$E[37m$$ 
      GOTO :end
    )
) ELSE (
  PROMPT $E[32m%USERDOMAIN%$E[37m:$E[36m[$P]$_$E[37m$$ 
)

:end
SET GITBRANCH=
SET GITCHANGED=

