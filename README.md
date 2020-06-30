# dictionnaire
Script bash permettant de trouver des mots correspondant à un certain nombre d'options



#<h2>Test</h2> <br/>Il est possible de tester le script par exemple avec le fichier "words" situé dans /usr/shar/dir

#<h3>Utilisation</h3> <br/>Le premier paramètre sert à déterminer la longueur du mot recherché<br/>
Les autres paramètres (optionels) servent à indiquer un caractère à une position précise

*./dico.sh 5 i2 u4*

Ici on cherche :
- Un mot de 5 lettres 
- La 2ème lettre doit être un i
- La 4ème lettre doit être un u

exemple le script peut retourner --> aigus, cieux, dilue, figue, virus...

Le script sera toujours appelé avec un paramètre de longueur de mot
Le nombre de paramètres indiquant une lettre avec sa postion peut varier 

#**Auteurs**<br/>
Nicolas Soares | ni.soares.pro@gmail.com
