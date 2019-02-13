public with sharing class BMIController {

    public BMIController() { }

    @AuraEnabled
    public static List<BMI__c> getBMI() {
        return [Select Name, Height__c, Weight__c, BMI__c from BMI__c Order by CreatedDate Limit 100];
    }
}
