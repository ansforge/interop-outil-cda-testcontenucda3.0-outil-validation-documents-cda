<?xml version="1.0" encoding="UTF-8"?>

<!--                 
    [E_statutDuDossierPresenteEnRCP_ANS]
   Teste la conformité de l'entrée FR-Statut-du-dossier-presente-en-RCP (1.2.250.1.213.1.1.3.7) en fonction de la conformité CI-SIS
   
   04/06/2024 : Création
   
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="E_statutDuDossierPresenteEnRCP_ANS">
    <title>FR-Statut-du-dossier-presente-en-RCP</title>
    <rule context="*[cda:templateId/@root='1.2.250.1.213.1.1.3.7']">
        
       
        <assert test='count(cda:code)=1 and cda:code/@code="GEN-099" and cda:code/@codeSystem="1.2.250.1.213.1.1.4.322"'>
            [E_statutDuDossierPresenteEnRCP_ANS] : Erreur de conformité CI-SIS : L'élément code doit être présent une fois et doit avoir l'attribut @code='GEN-3099' et
            le codeSystem='1.2.250.1.213.1.1.4.322'.
        </assert>
        
        <assert test="cda:id">
            [E_statutDuDossierPresenteEnRCP_ANS] Erreur de Conformité CI-SIS : l'entrée FR-Statut-du-dossier-presente-en-RCP doit contenir un élément "id"
        </assert>
        
        <assert test="cda:statusCode[@code='completed']">
            [E_statutDuDossierPresenteEnRCP_ANS] Erreur de Conformité CI-SIS : l'entrée FR-Statut-du-dossier-presente-en-RCP doit contenir un élément "statusCode" avec l'attribut @code='completed'
        </assert>
        
    </rule>    
    
</pattern>

