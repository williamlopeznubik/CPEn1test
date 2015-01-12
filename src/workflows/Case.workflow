<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Alerte_proprietaire_requete</fullName>
        <description>Alerte proprietaire requete</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Collection_Receivables/Avis_nouvelle_collection_120</template>
    </alerts>
    <rules>
        <fullName>Nouvelle collection 120%2B</fullName>
        <actions>
            <name>Alerte_proprietaire_requete</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>contains</operation>
            <value>Assignée</value>
        </criteriaItems>
        <description>Création d&apos;une nouvelle requête de collection</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
