:: configuration
@prompt $g$s &:: minimize output "noise"
@echo ON

if /i "%Perl_VERSION%" == "5.8.9" set "OS_unsupported=true"
if /i "%Perl_VERSION%" == "5.8.8" set "OS_unsupported=true"
if /i "%Perl_VERSION%" == "5.8"   set "OS_unsupported=true"

@echo OFF
@echo.
