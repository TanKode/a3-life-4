@echo off
echo Stopping the server for restart
echo Stopping arma3server.exe ...
taskkill /f /im arma3server.exe
echo Server is stopped now ... restarting
timeout /t 1 /nobreak
echo Starting Server
cd C:\a3l_server_live
start "arma3" /min /high "arma3server.exe" "-profiles=C:\a3l_server_live\a3l_server\config" "-BEPath=C:\a3l_server_live\a3l_server\battleye" "-config=C:\a3l_server_live\a3l_server\config\config.cfg" "-cfg=C:\a3l_server_live\a3l_server\config\basic.cfg" -port=2302 -world=empty  -noSound -nologs -malloc=tbbmalloc -nosplash -cpuCount=4 -maxmem=3047 "-mod=@extDB;@life_server"