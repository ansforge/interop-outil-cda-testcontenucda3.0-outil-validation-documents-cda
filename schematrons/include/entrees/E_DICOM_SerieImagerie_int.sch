<?xml version="1.0" encoding="UTF-8"?>

<!--  E_DICOM_SerieImagerie_int.sch -
      Schématron de l'entrée DICOM Part 20 - Series Act (1.2.840.10008.9.17)
    
    10/07/2023 : SBM : Création
    
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="E_DICOM_SerieImagerie_int">
    
    <title> DICOM Part 20 - Series Act </title>
    <rule context='*[cda:templateId/@root="1.2.840.10008.9.17"]'>
        <let name="count_templateId" value="count(cda:templateId)"/>
        <assert test='self::cda:act[@classCode and @moodCode]'>
            [E_DICOM_SerieImagerie_int] Erreur de conformité DICOM : Dans l'entrée "Series Act", les attributs "classCode" et "moodCode" doivent etre présents.</assert>
        
        <assert test='count(cda:id)&gt;=1'>
            [E_DICOM_SerieImagerie_int] Erreur de conformité DICOM : Dans l'entrée "Series Act", il doit y avoir un ou plusieurs éléments "id".</assert>
        
        <assert test='count(cda:code)=1 and cda:code/@code="113015" and cda:code/@codeSystem="1.2.840.10008.2.16.4"'>
            [E_DICOM_SerieImagerie_int] Erreur de conformité DICOM : Dans l'entrée "Series Act", il doit y avoir un élément "code" [1..1] ayant comme attributs :
            @code='113015' et @codeSystem='1.2.840.10008.2.16.4'.
        </assert>
        
        <assert test='count(cda:code/cda:qualifier)=1 and
            count(cda:code/cda:qualifier/cda:name)=1 and
            count(cda:code/cda:qualifier/cda:value)=1 and
            cda:code/cda:qualifier/cda:name/@code="121139" and cda:code/cda:qualifier/cda:name/@codeSystem="1.2.840.10008.2.16.4"'>
            [E_DICOM_SerieImagerie_int] Erreur de conformité DICOM : Dans l'entrée "Series Act", il doit y avoir un élément "code" [1..1] ayant comme sous éléments :
            - L'élément qualifier/name ayant comme attribut @code='121139' et @codeSystem='1.2.840.10008.2.16.4'.
            - L'élément qualifier/value.
        </assert>
        
        <assert test="count(cda:entryRelationship[@typeCode='COMP']/cda:observation/cda:templateId[@root='1.2.840.10008.9.18'])=1 and cda:entryRelationship[@typeCode='COMP']/cda:observation[cda:templateId/@root='1.2.840.10008.9.18']/cda:code">
            [E_procedureEntry_int] Erreur de conformité CI-SIS : Dans l'entrée "Series Act", il doit y avoir une seule entrée 'SOP Instance Observation' ayant comme attribut @typeCode='COMP'.
            L'élément code de l'entrée est obligatoire [1..1]
            Le templateId doit avoir l'attribut @rootCode='1.2.840.10008.9.18'.
        </assert>
    </rule>
</pattern>
