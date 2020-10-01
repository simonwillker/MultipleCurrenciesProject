public class PriceTriggerHandler {
    
    /*
     * Trigger Insert Before　処理
     */
    public void OnBeforeInsert(List<Price__c> newList){
        setCurrencyIsoCodeInsert(newList);
    }
    
    /*
     * Trigger Update Before　処理
     */
    public void OnBeforeUpdate(List<Price__c> newList, Map<Id,Price__c> oldMap){

        setCurrencyIsoCodeUpdate(newList,oldMap);
        
    }
    
    /*
     * 通貨に通貨コードの値を設定する
     * ＠param List<Price__c> newList
     * @return none
     */ 
    public void setCurrencyIsoCodeInsert(List<Price__c> newList){
		
        List<Price__c> insertList = new List<Price__c>();
        for(Price__c price : newList){
            if(price.Currency__c != null && price.Currency__c != price.CurrencyIsoCode){
                price.CurrencyIsoCode = price.Currency__c;
                insertList.add(price);
            }
        }
    }
    
    public void setCurrencyIsoCodeUpdate(List<Price__c> newList,Map<Id,Price__c> oldMap){
		
        List<Price__c> updateList = new List<Price__c>();
        for(Price__c price : newList){
            if(price.Currency__c != null && price.Currency__c != oldMap.get(price.Id).Currency__c){
                price.CurrencyIsoCode = price.Currency__c;
                updateList.add(price);
            }
        }
    }

}