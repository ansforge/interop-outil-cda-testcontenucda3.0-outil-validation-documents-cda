<?xml version="1.0" encoding="UTF-8"?>

<!-- Schématron CI-SIS_OPH-BRE_2022.02
        Vérification de la conformité du document au modèle OPH-BRE_2022.02   
        
        Auteur : ANS 
        Historique :
        27/05/2021 : Création
        06/10/2021 : Modification suite aux codes et displaynames mis à jour dans le CDA
        25/04/2022 : version 2022.01
	25/04/2022 : Migration des terminologies et JDV en SNOMED-CT
	20/12/2022 : Version 2022.02, correction des JDV et terminologies
	28/08/2023 : Migration des terminologies et JDV
-->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" defaultPhase="OPH-BRE"
        xmlns:cda="urn:hl7-org:v3" queryBinding="xslt2"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" schemaVersion="CI-SIS_OPH-BRE_2022.02.sch">

        <title>Vérification de la conformité du document au modèle OPH-BRE_2022.02</title>
        <ns prefix="cda" uri="urn:hl7-org:v3"/>
        <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
        <ns prefix="jdv" uri="http://esante.gouv.fr"/>
        <ns prefix="svs" uri="urn:ihe:iti:svs:2008"/>
        <!--  Abstract patterns  -->
        <include href="abstract/dansJeuDeValeurs.sch"/>
        <include href="abstract/IVL_TS.sch"/>
        <!-- JDV du document OPH-BRE -->
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MotifConsultationOphtalmologique-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MotifConsultationOphtalmologiqueEntete-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_OrientationBaseDuPrisme-CISIS.sch"/>        
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_OeilExamine-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_TypeDeVerresPrescrits-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_TypeDeLentilles-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_AdditionGrandeur-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_TypeDePrisme-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_Lateralite-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_TypeDeMesureAcuiteVisuelle-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_TypeDeMesureDeRefraction-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_TypeDeMesureDispositifOculaire-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MesureVerrePrescrit-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MesureTypeVerrePrescrit-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MesureVerreDelivre-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MesureTypeVerreDelivre-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MesureLentillePrescrite-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MesureLentilleDelivree-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_MethodeDeMesureAcuiteVisuelle-CISIS.sch"/>
        <include href="include/jeuxDeValeurs/OPH-BRE_2022.02/JDV_TypeDispositifOcculaire-CISIS.sch"/>
        
        <!-- En-tête du document OPH-BRE  -->
        <include href="include/specificationsVolets/OPH-BRE_2022.02/en-tete/Entete_OPH-BRE.sch"/>
        <!-- Entrées du document OPH-BRE -->
        <include href="include/specificationsVolets/OPH-BRE_2022.02/Entrees/E_raisonDeLaRecommandation_OPH-BRE.sch"/> 
        <include href="include/specificationsVolets/OPH-BRE_2022.02/Entrees/E_mesuresDeRefractionOrganizer_OPH-BRE.sch"/> 
        <include href="include/specificationsVolets/OPH-BRE_2022.02/Entrees/E_mesuresAcuiteVisuelle_OPH-BRE.sch"/> 
        <include href="include/specificationsVolets/OPH-BRE_2022.02/Entrees/E_mesuresDispositifOculaireOrganizer_OPH-BRE.sch"/>
        
        <phase id="OPH-BRE">
                <active pattern="variables"/>
                <p>Vérification complète de la conformité au CI-SIS</p>
                <!-- schématrons des JDV OPH-BRE -->
                <active pattern="JDV_MotifConsultationOphtalmologiqueEntete-CISIS"/>
                <active pattern="JDV_OeilExamine-CISIS"/>
                <active pattern="JDV_TypeDeMesureAcuiteVisuelle-CISIS"/>
                <active pattern="JDV_TypeDeMesureDeRefraction-CISIS"/>
                <active pattern="JDV_TypeDeMesureDispositifOculaire-CISIS"/>
                <active pattern="JDV_TypeDePrisme-CISIS"/>
                <active pattern="JDV_OrientationBaseDuPrisme-CISIS"/>
                <active pattern="JDV_MotifConsultationOphtalmologique-CISIS"/>
                <active pattern="JDV_AdditionGrandeur-CISIS"/>
                <active pattern="JDV_TypeDeLentilles-CISIS"/>
                <active pattern="JDV_Lateralite-CISIS"/>
                <active pattern="JDV_TypeDeVerresPrescrits-CISIS"/> 
                <active pattern="JDV_MesureVerrePrescrit-CISIS"/>
                <active pattern="JDV_MesureTypeVerrePrescrit-CISIS"/>
                <active pattern="JDV_MesureVerreDelivre-CISIS"/>
                <active pattern="JDV_MesureTypeVerreDelivre-CISIS"/>
                <active pattern="JDV_MesureLentillePrescrite-CISIS"/>
                <active pattern="JDV_MesureLentilleDelivree-CISIS"/>
                <active pattern="JDV_MethodeDeMesureAcuiteVisuelle-CISIS"/>
                <active pattern="JDV_TypeDispositifOcculaire-CISIS"/>
                
                <!-- schématrons de l'en-tête OPH-BRE -->
                <active pattern="Entete_OPH-BRE"/>
                
                <!-- schématrons des entrées OPH-BRE -->
                <active pattern="E_raisonDeLaRecommandation_OPH-BRE"/>
                <active pattern="E_mesuresDeRefractionOrganizer_OPH-BRE"/>
                <active pattern="E_mesuresAcuiteVisuelle_OPH-BRE"/>
                <active pattern="E_mesuresDispositifOculaireOrganizer_OPH-BRE"/>
                
        </phase>
        <pattern id="variables">      
                <let name="jdv_MotifConsultationOphtalmologique-CISIS" value="'../jeuxDeValeurs/JDV_MotifConsultationOphtalmologique_CISIS.xml'"/>
                <let name="jdv_OrientationBaseDuPrisme-CISIS" value="'../jeuxDeValeurs/JDV_OrientationBaseDuPrisme_CISIS.xml'"/>
                <let name="jdv_OeilExamine-CISIS" value="'../jeuxDeValeurs/JDV_OeilExamine_CISIS.xml'"/>
                <let name="jdv_TypeDeVerresPrescrits-CISIS" value="'../jeuxDeValeurs/JDV_TypeDeVerresPrescrits_CISIS.xml'"/>
                <let name="jdv_TypeDeLentilles-CISIS" value="'../jeuxDeValeurs/JDV_TypeDeLentilles_CISIS.xml'"/>
                <let name="jdv_AdditionGrandeur-CISIS" value="'../jeuxDeValeurs/JDV_AdditionGrandeur_CISIS.xml'"/>
                <let name="jdv_TypeDePrisme-CISIS" value="'../jeuxDeValeurs/JDV_TypeDePrisme_CISIS.xml'"/>
                <let name="JDV_Lateralite-CISIS" value="'../jeuxDeValeurs/JDV_Lateralite_CISIS.xml'"/>
                <let name="jdv_TypeDeMesureAcuiteVisuelle-CISIS" value="'../jeuxDeValeurs/JDV_TypeDeMesureAcuiteVisuelle_CISIS.xml'"/>
                <let name="jdv_TypeDeMesureDeRefraction-CISIS" value="'../jeuxDeValeurs/JDV_TypeDeMesureDeRefraction_CISIS.xml'"/>
                <let name="jdv_TypeDeMesureDispositifOculaire-CISIS" value="'../jeuxDeValeurs/JDV_TypeDeMesureDispositifOculaire_CISIS.xml'"/>
                <let name="jdv_TypeDeDistanceDeVisualisation-CISIS" value="'../jeuxDeValeurs/JDV_TypeDeDistanceDeVisualisation_CISIS.xml'"/>
                <let name="jdv_MesureVerrePrescrit-CISIS" value="'../jeuxDeValeurs/JDV_MesureVerrePrescrit_CISIS.xml'"/>
                <let name="jdv_MesureTypeVerrePrescrit-CISIS" value="'../jeuxDeValeurs/JDV_MesureTypeVerrePrescrit_CISIS.xml'"/>
                <let name="jdv_MesureVerreDelivre-CISIS" value="'../jeuxDeValeurs/JDV_MesureVerreDelivre_CISIS.xml'"/>
                <let name="jdv_MesureTypeVerreDelivre-CISIS" value="'../jeuxDeValeurs/JDV_MesureTypeVerreDelivre_CISIS.xml'"/>
                <let name="jdv_MesureLentillePrescrite-CISIS " value="'../jeuxDeValeurs/JDV_MesureLentillePrescrite_CISIS.xml'"/>
                <let name="jdv_MesureLentilleDelivree-CISIS" value="'../jeuxDeValeurs/JDV_MesureLentilleDelivree_CISIS.xml'"/>
                <let name="jdv_MethodeDeMesureAcuiteVisuelle-CISIS" value="'../jeuxDeValeurs/JDV_MethodeDeMesureAcuiteVisuelle_CISIS.xml'"/>
                <let name="jdv_TypeDispositifOcculaire-CISIS" value="'../jeuxDeValeurs/JDV_TypeDispositifOcculaire_CISIS.xml'"/>  
                <rule context="cda:ClinicalDocument/cda:component/cda:structuredBody">
                        <!-- [1..1] Section FR-Raison-de-la-recommandation (obligatoire) -->
                        <assert test="cda:component/cda:section/cda:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.3.1']"> 
                                [OPH-BRE_2022.02] Erreur de conformité : La section "FR-Raison-de-la-recommandation" (1.3.6.1.4.1.19376.1.5.3.1.3.1) doit être présente.
                        </assert>                        
                        <!-- [1..1] Section FR-Examen-physique-oculaire (obligatoire) -->
                        <assert test="cda:component/cda:section/cda:templateId[@root='1.3.6.1.4.1.19376.1.12.1.2.5']"> 
                                [OPH-BRE_2022.02] Erreur de conformité : La section "FR-Examen-physique-oculaire" (1.3.6.1.4.1.19376.1.12.1.2.5) doit être présente.
                        </assert>
                        <!-- [1..1] Section FR-Principal-motif-non-code (obligatoire pour IHE-GEE mais non significative pour OPH-BRE) -->
                        <assert test="cda:component/cda:section/cda:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']"> 
                                [OPH-BRE_2022.02] Erreur de conformité : La section "FR-Principal-motif-non-code" (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) doit être présente.
                        </assert>
                        <!-- [1..1] Section FR-Histoire-de-la-maladie-non-code (obligatoire pour IHE-GEE mais non significative pour OPH-BRE) -->
                        <assert test="cda:component/cda:section/cda:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.3.4']"> 
                                [OPH-BRE_2022.02] Erreur de conformité : La section "FR-Histoire-de-la-maladie-non-code" (1.3.6.1.4.1.19376.1.5.3.1.3.4) doit être présente.
                        </assert>
                        <!-- [1..1] Section FR-Evaluation-et-plan-non-code (obligatoire pour IHE-GEE mais non significative pour OPH-BRE) -->
                        <assert test="cda:component/cda:section/cda:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.1.13.2.5']"> 
                                [OPH-BRE_2022.02] Erreur de conformité : La section "FR-Evaluation-et-plan-non-code" (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.5) doit être présente.
                        </assert>
                        
                </rule>
        </pattern>
</schema>