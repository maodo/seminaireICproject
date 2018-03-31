<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>error</title>
    </head>
    <body>
    <center>
        <h1 style="color :blue; font-size: 5em;">${code} !!!</h1>
        <h3 style="color :red">
            <c:if test="${code eq 404}">
                Le ressource demandée n'a pas été trouvée.
            </c:if>
            <c:if test="${code eq 400}">
                La syntaxe de la requête est incorrecte !
            </c:if>
            <c:if test="${code eq 401}">
                Une authentification est nécessaire pour accéder à la ressource !
            </c:if>
            <c:if test="${code eq 403}">
                Vous n'avez pas les autorisations requises pour effectuer cette action !
            </c:if>
            <c:if test="${code eq 405}">
                La méthode appelée n'est pas autorisée !
            </c:if>
            <c:if test="${code eq 408}">
                Temps d’attente d’une réponse du serveur écoulé !
            </c:if>
            <c:if test="${code eq 415}">
                Format de la requête non supporté !
            </c:if>
            <c:if test="${code eq 500}">
                Le serveur est actuellement indisponible. Votre requête ne peut être traitée !
            </c:if>
            <c:if test="${code eq 600}">
                Une erreur est survenue pendant le traitement de votre requête !
            </c:if>
        </h3>
    </center>   
</body>
</html>
