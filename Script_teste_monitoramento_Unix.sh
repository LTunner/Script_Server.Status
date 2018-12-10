#!/bin/bash

echo -e "\e[1;31m ########## SISTEMA DE MONITORAMENTO E ANÁLISE ########## \e[0m"

function monitoramento () {

	
	timeout 10m iostat -c 60 > 	Teste_Iostat_Begin_$(date +"%m%d%Y%H%M%S").txt	&															#
 	timeout 10m vmstat 60 > 		Teste_Vmstat_Begin_$(date +"%m%d%Y%H%M%S").txt 	&							  #Provê resumo de várias funções 	do sistema
	timeout 10m mpstat -u 60 > 	Teste_Mpstat_Begin_$(date +"%m%d%Y%H%M%S").txt															#
	netstat > 			Teste_Netstat_Begin _$(date +"%m%d%Y%H%M%S").txt  													#Informações ao ambiente de rede
  finalizar
}


function finalizar (){
	echo ""
	echo -e "\e[1;31m ########## Obrigado por utilizar o script de LUCIANO TUNNER! ########## \e[0m"
	echo -e ""
	sleep 3
	echo -n "Script fechando em:"
	sleep 1
	echo -n "  3"
	sleep 1
	echo -n "  2"
	sleep 1
	echo -n "  1"
	sleep 1
	echo  Finalizado em $(date +"%m/%d/%Y_%H:%M:%S")
}



monitoramento





 
 
 
 
 #iostat - relate estatísticas da Unidade Central de Processamento (CPU) e estatísticas de entrada / saída para dispositivos, partições e sistemas de arquivos de rede (NFS).
	
	

#sar -R memoria
#sar -S Swap
#sar -u 2 5    #Reportar uma utilização da CPU para cada 2 segundos. 5 linhas são exibidas.
