@isTest
public class PriceTriggerTest {
    
    static testMethod void onBeforeInsertTest(){
        
        test.startTest();
        Price__c p = new Price__c();
        p.Currency__c = 'USD';
        insert p;
        test.stopTest();
        
    }
    static testMethod void onBeforeUpdateTest(){
        
        Price__c p = new Price__c();
        p.Currency__c = 'USD';
        insert p;
        test.startTest();
        Price__c price = [SELECT Id,Currency__c,CurrencyIsoCode FROM Price__c WHERE Id =: p.Id];
        price.Currency__c = 'JPY';
        update price;
        test.stopTest();
        
    }
}