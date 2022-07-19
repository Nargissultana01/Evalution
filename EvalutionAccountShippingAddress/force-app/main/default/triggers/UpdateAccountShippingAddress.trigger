trigger UpdateAccountShippingAddress on Account (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        EvalutionGithubUpdateShippingAddress.UpdateShipAddress(Trigger.new);
    }

}