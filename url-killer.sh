#!/bin/bash

figlet -c Url KilleR
echo
echo "insira o dominio: "
read dom
wget $dom
    if [ -e "index.html" ] 
        then
			fil=`grep "http" "index.html" | cut -d "/" -f3 | sort -u | grep -v "<" | grep -v ">"`i
		echo "nome do arquivo: "
		read dump
	       		for i in $fil	
	   	    		do
		    			host $i | grep address >> $dump
				done		
    					cat $dump
					rm "index.html"
					
					
    fi
	
