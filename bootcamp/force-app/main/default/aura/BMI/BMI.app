<aura:application extends="force:slds" controller="BMIController">

    <aura:attribute name="height" type="Decimal"/>
    <aura:attribute name="weight" type="Decimal" default="185"/>

    <div class="slds-scope">

        <c:BMIForm height="{!v.height}" weight="{!v.weight}"></c:BMIForm>

        <c:BMITable></c:BMITable>
        
    </div>

</aura:application>	
