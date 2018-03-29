<%-- 
    Document   : jsptrab
    Created on : 24/03/2018, 12:10:45
    Author     : Lucas Lima
--%>

<%@page import="br.cefetrj.psw.jspalunoformtabela.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Trabalho</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            table{
                background-color: #66CDAA;
                border-collapse: collapse;
                font-family: Verdana 14;
                padding: 100px;
                margin-top: 100px; 
                width: 1000px;
            }
           
            form{
                margin-top: 50px;
                padding: 20px;
                background-color: #C0C0C0;
                font-family: cursive; 
                margin-bottom: 100px;
                
                
                
                
            }
            input[type='text']{
                margin-top: 10px;
                margin-bottom: 10px;
                width: 100%;
                padding: 5px 10px;
                box-sizing: border-box;
                border: 1px solid black;
                border-radius: 4px;
            }
            
            input[type='submit']{
                margin-top: 20px;
                margin-left: 450px;
                border: 1px solid black;
                border-radius: 4px;
                padding: 3px;
                font-family: monospace;
                
            }
            input[type='reset']{
                margin-top: 20px;
                padding: 3px;
                border: 1px solid black;
                border-radius: 4px;
                font-family: monospace;
                
            }
            legend{
                font-size: 30px;
                font-family: monospace;  
                margin-left: 170px;
                
            }
            
        
        </style>
        

    </head>
   
    
    
    <body>
        
        
        
        
            
         <table border='1px solid black collapse'>
             <tr>
                 <td>Aluno</td>
                 <td>Frequencia</td>
                 <td>Nota 1</td>
                 <td>Trabalho</td>
                 <td>Projeto</td>
                 <td>Média</td>
                 <td>Prova Final</td>
                 <td>Situacao</td>
                 
                 
             </tr>
             <c:if test="${not empty a}">
             <c:forEach items="${ a}" var="b" >

             <tr>
                 <td>${b.nome}</td>
                 <td>${b.frequencia}</td>
                 <td>${b.nota1}</td>
                 <td>${b.trabalho}</td>
                 <td>${b.projeto}</td>
                 <td>${b.m1}</td>
                 <td>${b.notafinal}</td>
                 <td>${b.situacao}</td>
                 
          
                 
             </tr>
             </c:forEach>
             </c:if>
               
                 <input type="submit" id="botao" value="Novo Aluno" onclick="location.href='http://localhost:8080/jspalunoformtabela/index.jsp'">
            
            
            
         </table>

    </body>
</html>

