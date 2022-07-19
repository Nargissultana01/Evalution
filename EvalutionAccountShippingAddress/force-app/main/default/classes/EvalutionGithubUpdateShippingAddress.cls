public class EvalutionGithubUpdateShippingAddress {
    
    
    Public static void UpdateShipAddress(List<Account> accList){
        try{
            System.debug(' before accList--------->'+accList);
            if(!accList.isEmpty() && accList.size()>0){
                For(Account acc :accList){
                        acc.ShippingCity=acc.BillingCity;
                        acc.ShippingCountry=acc.BillingCountry;
                        acc.ShippingLatitude=acc.BillingLatitude;
                        acc.ShippingLongitude=acc.BillingLongitude;
                        acc.ShippingPostalCode=acc.BillingPostalCode;
                        acc.ShippingState=acc.BillingState;
                        acc.ShippingStreet=acc.BillingStreet;
                        acc.ShippingGeocodeAccuracy=acc.BillingGeocodeAccuracy;
                    
                }
                
                System.debug('accList------------>'+accList);
                
            }
        }
        catch(Exception e){
            System.debug('Error------------>'+e.getMessage());
        }
    }

}
