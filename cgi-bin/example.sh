#!/bin/bash
printf "Content-type: text/html\n\n"

saveIFS=$IFS
IFS='=&'
parm=($QUERY_STRING)
IFS=$saveIFS

printf "<!DOCTYPE html> \n"
printf "<html> \n"
printf    "<head> \n"
printf        "<meta charset=\"UTF-8\"> \n"
printf        "<meta name=\"author\" content=\"Vladwoguer Bezerra\"> \n"
printf        "<title>CGI SCRIPT EXEMPLO</title> \n"
printf    "</head> \n"

printf "<body>  \n"





if [ ${parm[0]} == "name" ]; then
    printf "<h1> Olá, ${parm[1]} </h1> \n"
fi

printf "<h2> Script de exemplo cgi </h2>\n"

printf "</body> \n"

printf "</html> \n"
