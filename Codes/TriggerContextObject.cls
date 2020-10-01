/**
 * Name : TriggerContextObject
 * Description : カスタマメタデータ＜TriggerExceuteManage＞により、トリガーの実行管理を行うクラス
 */ 
public class TriggerContextObject {

    private static Map<String,TriggerExecuteManage__mdt> temMap{get;set;}
    
    // トリガーのスキップ判定
    public static Boolean isSkip(String triggerName){
        if(temMap == null){toStoreInMap();}
        return !temMap.containsKey(triggerName);
    }
    
    // カスタムメタデータ＜TriggerExceuteManage＞の内容をマップへ格納する
    private static void toStoreInMap(){
        temMap = new Map<String,TriggerExecuteManage__mdt>();
        List<TriggerExecuteManage__mdt> temList = [SELECT Id,DeveloperName,IsActive__c FROM TriggerExecuteManage__mdt WHERE IsActive__c = true];
        for(TriggerExecuteManage__mdt tem : temList){
            temMap.put(tem.DeveloperName, tem);
        }
    }
}