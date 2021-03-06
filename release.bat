@echo off
set output=.\release
set source=.
set variant=Release
rmdir /Q /S "%output%"
md "%output%
copy "%source%\Tera.DamageMeter\bin\%variant%\*" "%output%\"
copy "%source%\ReadmeUser.txt" "%output%\readme.txt"
xcopy /E /EXCLUDE:.\exclude.txt "%source%\resources" "%output%\resources\"
del "%output%\SharpPcap.xml"
del "%output%\PacketDotNet.xml"
del "%output%\*.vshost*"
del "%output%\*.pdb"
