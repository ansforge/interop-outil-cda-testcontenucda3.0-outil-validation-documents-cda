<?xml version="1.0" encoding="UTF-8"?>
<!-- 
   ......................................................................................................................................................    
   CI-SIS_ANEST-CR-ANEST_2022.01.sch
   Schématron de vérification de la conformité au modèle du CI-SIS d'un document ANEST-CR-ANEST_2022.01
   
   ANEST-CR-ANEST : Compte rendu d'anesthésie
   auteur : ANS
   ......................................................................................................................................................    
    Historique :
      15/09/2020 : Création
      16/12/2020 : Renommage JDV
      05/04/2022 : Migration des terminologies et JDV : Ajout du JDV_RouteofAdministration_CISIS.sch
      28/08/2023 : Migration des terminologies et JDV
      25/04/2024 : Suppression du JDV_RouteofAdministration_CISIS.sch 
   ......................................................................................................................................................    
-->

<schema xmlns="http://purl.oclc.org/dsdl/schematron" defaultPhase="CI-SIS_ANEST-CR-ANEST_2022.01"
    xmlns:cda="urn:hl7-org:v3" queryBinding="xslt2"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" schemaVersion="CI-SIS_ANEST-CR-ANEST_2022.01.sch">
    <title>Rapport de conformité du document aux spécifications du modèle ANEST-CR-ANEST du CI-SIS</title>
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="jdv" uri="http://esante.gouv.fr"/>
    <ns prefix="svs" uri="urn:ihe:iti:svs:2008"/>
    
    <!-- Abstract patterns -->
    <include href="abstract/dansJeuDeValeurs.sch"/>
    <include href="abstract/IVL_TS.sch"/>   
    
    <!-- JDV -->
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_TypeAnesthesie-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_Difficulte-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_ScoreCormack-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_AbordVeineuxCentral-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_AbordVeineuxPeripherique-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_NVPO-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_ScoreASA-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_EvaluationDouleur-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_DefaillanceMaterielle-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_TypeIntubation-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_Lateralite-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_ClassificationRingMessmer-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_AccesArtere-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_HL7_ActPriority-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/ANEST-CR-ANEST_2022.01/JDV_TypeProduitSanguinLabile-CISIS.sch"/>
    
    <!-- Entete -->
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Entete/Entete_Anest-CR-Anest.sch"/>
    
    <!-- Sections -->
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Sections/S_ActesEtInterventions_ANEST-CR-ANEST.sch"/>
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Sections/S_DispositifsMedicaux_ANEST-CR-ANEST.sch"/>
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Sections/S_TraitementsAdministres_ANEST-CR-ANEST.sch"/>
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Sections/S_CommentaireNonCodee_ANEST-CR-ANEST.sch"/>
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Sections/S_ExamenPhysiqueDetaille_ANEST-CR-ANEST.sch"/>
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Sections/S_PlanDeSoins_ANEST-CR-ANEST.sch"/>
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Sections/S_ResultatsEvenements_ANEST-CR-ANEST.sch"/>
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Sections/S_DocumentsReferences-CISIS.sch"/>
    <!-- Entrées -->
    <include href="include/specificationsVolets/ANEST-CR-ANEST_2022.01/Entrees/E_Acte_ActesEtInterventions_ANEST-CR-ANEST.sch"/>
    
    <phase id="CI-SIS_ANEST-CR-ANEST_2022.01">
        <active pattern="JDVvariables"/>
        
        <!-- JDV -->        
        <active pattern="JDV_TypeAnesthesie-CISIS"/>
        <active pattern="JDV_ScoreCormack-CISIS"/>
        <active pattern="JDV_AbordVeineuxPeripherique-CISIS"/>
        <active pattern="JDV_AbordVeineuxCentral-CISIS"/>
        <active pattern="JDV_NVPO-CISIS"/>
        <active pattern="JDV_ScoreASA-CISIS"/>
        <active pattern="JDV_EvaluationDouleur-CISIS"/>
        <active pattern="JDV_TypeIntubation-CISIS"/>
        <active pattern="JDV_DefaillanceMaterielle-CISIS"/>
        <active pattern="JDV_Difficulte-CISIS"/>
        <active pattern="JDV_Lateralite-CISIS"/>
        <active pattern="JDV_ClassificationRingMessmer-CISIS"/>
        <active pattern="JDV_AccesArtere-CISIS"/>
        <active pattern="JDV_HL7_ActPriority-CISIS"/>
        <active pattern="JDV_TypeProduitSanguinLabile-CISIS"/>
        
        <!-- Entete -->
        <active pattern="Entete_Anest-CR-Anest"/>
        
        <!-- Sections spécifiques au volet ANEST-CR-ANEST -->
        <active pattern="S_ActesEtInterventions_ANEST-CR-ANEST"/>
        <active pattern="S_DispositifsMedicaux_ANEST-CR-ANEST"/>
        <active pattern="S_TraitementsAdministres_ANEST-CR-ANEST"/>
        <active pattern="S_CommentaireNonCodee_ANEST-CR-ANEST"/>
        <active pattern="S_ExamenPhysiqueDetaille_ANEST-CR-ANEST"/>
        <active pattern="S_PlanDeSoins_ANEST-CR-ANEST"/>
        <active pattern="S_ResultatsEvenements_ANEST-CR-ANEST"/>
        <active pattern="S_DocumentsReferences_ANEST-CR-ANEST"/>
        
        <!-- Entrées spécifiques au volet ANEST-CR-ANEST -->
        <active pattern="E_Acte_ActesEtInterventions_ANEST-CR-ANEST"/>
        
    </phase>
    
    <pattern id="JDVvariables">
        <let name="JDV_TypeAnesthesie-CISIS" value="'../jeuxDeValeurs/JDV_TypeAnesthesie_CISIS.xml'"/>
        <let name="JDV_Difficulte-CISIS" value="'../jeuxDeValeurs/JDV_Difficulte_CISIS.xml'"/>
        <let name="JDV_ScoreCormack-CISIS" value="'../jeuxDeValeurs/JDV_ScoreCormack_CISIS.xml'"/>
        <let name="JDV_AbordVeineuxCentral-CISIS" value="'../jeuxDeValeurs/JDV_AbordVeineuxCentral_CISIS.xml'"/>
        <let name="JDV_AbordVeineuxPeripherique-CISIS" value="'../jeuxDeValeurs/JDV_AbordVeineuxPeripherique_CISIS.xml'"/>
        <let name="JDV_TypeIntubation-CISIS" value="'../jeuxDeValeurs/JDV_TypeIntubation_CISIS.xml'"/>
        <let name="JDV_NVPO-CISIS" value="'../jeuxDeValeurs/JDV_NVPO_CISIS.xml'"/>
        <let name="JDV_ScoreASA-CISIS" value="'../jeuxDeValeurs/JDV_ScoreASA_CISIS.xml'"/>
        <let name="JDV_EvaluationDouleur-CISIS" value="'../jeuxDeValeurs/JDV_EvaluationDouleur_CISIS.xml'"/>
        <let name="JDV_DefaillanceMaterielle-CISIS" value="'../jeuxDeValeurs/JDV_DefaillanceMaterielle_CISIS.xml'"/>
        <let name="JDV_Lateralite-CISIS" value="'../jeuxDeValeurs/JDV_Lateralite_CISIS.xml'"/>
        <let name="JDV_ClassificationRingMessmer-CISIS" value="'../jeuxDeValeurs/JDV_ClassificationRingMessmer_CISIS.xml'"/>
        <let name="JDV_AccesArtere-CISIS" value="'../jeuxDeValeurs/JDV_AccesArtere_CISIS.xml'"/>
        <let name="JDV_HL7_ActPriority-CISIS" value="'../jeuxDeValeurs/JDV_HL7_ActPriority_CISIS.xml'"/>
        <let name="JDV_TypeProduitSanguinLabile-CISIS" value="'../jeuxDeValeurs/JDV_TypeProduitSanguinLabile_CISIS.xml'"/>
        
        <!-- présence des sections obligatoires -->        
        <rule context="cda:ClinicalDocument/cda:component/cda:structuredBody">            
            <assert test="count(cda:component/cda:section[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.1.13.2.11'])=1"> 
                [Entete_ANEST-CR-ANEST] Erreur de conformité au modèle : La section "Actes et interventions" (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.11) doit être présente.
            </assert>
        </rule>
        
        
    </pattern>
</schema>