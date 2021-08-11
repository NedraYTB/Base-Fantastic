@echo OFF
RMDIR /s /q "e:\baseyoutube\cache\files"
echo ----------------------------------
echo -
echo Pour relancer votre serveur, faites CTRL + C puis "runserver"
echo -
echo ----------------------------------
echo -
echo Appuyez sur une TOUCHE pour lancer votre serveur
echo -
pause > nul
CLS
cd e:\baseyoutube
cmd /k FXServer.exe +exec server.cfg

