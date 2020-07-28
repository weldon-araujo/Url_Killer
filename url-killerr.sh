#!/bin/bash

# versao 1.0

# este script irá automatizar busca de dominios e subdominios em indexes de 
# paginas web e retornará seus respectivos ip, primeiro irá receber o valor do
# dominio passado pelo usuário ex: dominio.com.br que irá ser guardado em uma
# variavel "dom" depois será utilizado o utilitário "wget" para baixar o index
# do dominio passado pelo usuario, será feito umteste através de estrutura "if"
# para saber se existe o arquivo "index.html" no local atual, se sim ele vai 
# executar a linha abaixo do "then" para atribui o valor dos comandos a varia
# avel "fil", logo abaixo vou entrar com uma estrutura "for" irá tratar a va
# riavel "fil" como uma lista e irá efetuar o comando "host" para resolver
# os dominios coletados na lista em conjunto com filtro "grep" para filtra
# a saida do comando "host".

# versao 1.1
# incorporado função de salvar a saida do script em arquivo

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
	
