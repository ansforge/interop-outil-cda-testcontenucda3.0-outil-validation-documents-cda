<?xml version="1.0" encoding="UTF-8"?>

<!-- E_historyOfPastIllness_CSE-CS24.sch
    
    Vérification des entrées relatives aux antécédents médicaux du CSE-CS24.
    
    Historique :
    24/06/11 : Création
    30/06/11 : Adaptation aux modifications de structure du volet concernant les entrées Problem Concern de la section
    11/10/17 : Ajout du nom du schématron sur le nom des messages d'erreur
    22/11/17 : Mise à jour des codes TA_CS ==> TA_ASIP
    24/02/21 : Correction des contrôles
    27/11/2024 : Version 2024
    
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="E_historyOfPastIllness_CSE-CS24">
    <title>Vérification des entrées relatives aux antécédents médicaux du CSE-CS24.</title>
    
    <rule context='*[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.3.8"]'>         
        
        <!-- Prématurité inf. à 33 semaines MED-183 -->
        <assert          
            test="cda:entry/cda:act[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.5.2']/cda:entryRelationship/cda:observation[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.5']/cda:value/@code='MED-183'"> 
            [E_historyOfPastIllness_CSE-CS24] Erreur de conformité : 
            L'entrée FR-Probleme "Prématurité inf. à 33 semaines" est obligatoire. 
        </assert>
        
        <!-- Accident(s) domestique(s) depuis le 9ème mois MED-185 -->        
        <assert          
            test="cda:entry/cda:act[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.5.2']/cda:entryRelationship/cda:observation[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.5']/cda:value/@code='MED-185'"> 
            [E_historyOfPastIllness_CSE-SC24] Erreur de conformité :
            L'entrée FR-Probleme 'Accidents domestiques depuis le 9ème mois' est obligatoire.
        </assert>       
     <assert test="not(cda:entry/cda:act[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.5.2']/cda:entryRelationship/cda:observation[@negationInd='false' and cda:value/@code='MED-186']) or cda:entry/cda:act[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.5.2']/cda:entryRelationship/cda:observation[@negationInd='false' and cda:value/@code='MED-186']/cda:entryRelationship[@typeCode='CAUS' and cda:observation[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.13']]"> 
            [E_historyOfPastIllness_CSE-SC24] Erreur de conformité : 
            Si l'entrée FR-Probleme MED-186 a negationInd='false', au moins une sous-entrée FR-Simple-Observation doit être indiquée dans un entryRelationship de typeCode='CAUS'.
        </assert>
        <assert test="not(cda:entry/cda:act[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.5.2']/cda:entryRelationship/cda:observation[@negationInd='true' and cda:value/@code='MED-186']/cda:entryRelationship[@typeCode='CAUS'])">
            [E_historyOfPastIllness_CSE-SC24] Erreur de conformité :
            Si l'entrée FR-Probleme MED-186 a negationInd='true', aucun entryRelationship de typeCode='CAUS' ne doit être présent.
        </assert>
                
    </rule> 
</pattern>

