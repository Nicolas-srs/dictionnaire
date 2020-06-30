#!/bin/bash

truncate -s 0 liste || touch liste

longueur_mot=$1
shift
nombre_conditions=$#

#range les mots de bonne longueur dans le fichier liste
awk 'length($1) == '$longueur_mot' {print}' dico >> liste

#declaration des tableaux
declare -a caractere_a_rechercher
declare -a position
declare -a caractere

#Stockage des conditions à respecter
for ((i=0; i<$nombre_conditions; i++))
do
    caractere_a_rechercher[$i]=$(echo $1 | cut -c1)
    position[$i]=$(echo $1 | cut -c2)
    echo "nous cherchons ${caractere_a_rechercher[$i]} en position ${position[$i]}"
    shift
done

flag=1
while read mot
do
    for ((i=0; i<$nombre_conditions; i++))
    do
        caractere[$i]=$(echo ${mot:${position[$i]}:1})
    done
    for ((i=0; i<$nombre_conditions; i++))
    do
        if [ "${caractere[$i]}" == "${caractere_a_rechercher[$i]}" ]
        then
            flag=0
        else
            i=$nombre_conditions
            flag=1
        fi
    done
    if [ $flag -eq 0 ]
    then
        echo $mot
    fi
done < liste
