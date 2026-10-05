<?xml version="1.0" encoding="UTF-8"?>

<!--                  
    Entete_TLM-CR.sch
    Teste la conformité de l'entete du volet TLM-CR au CI-SIS
    
    Historique :
    19/12/2019 : Création
    05/05/2020 : Mise à jour de la liste des codes possibles pour cda:documentationOf/cda:serviceEvent/cda:code
    30/03/2026 : Suppression de la liste des codes NGAP pour l'évènement documenté
    
-->


<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="Entete_TLM-CR">

    <rule context='cda:ClinicalDocument'>
        <assert test="cda:code[@code='85208-7']">
            [Entete_TLM-CR] Le code du document TLM-CR doit être égal à '85208-7'.
        </assert>
    </rule>
        
    <rule context="cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:code">
        <assert test="@codeSystem='1.2.250.1.215.300.3'">
            [Entete_TLM-CR] Le code de l'acte documenté est obligatoirement issu de la NGAP
        </assert>
    </rule>
    
</pattern>