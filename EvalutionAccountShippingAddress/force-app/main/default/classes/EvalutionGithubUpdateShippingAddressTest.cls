@isTest
public class EvalutionGithubUpdateShippingAddressTest {
    @isTest
    public static void updateAddress(){
        List<Account> allList =new List<account>();
        Account ac =new Account();
        ac.BillingCity='Test';
        ac.BillingCountry='TestCountry';
        ac.BillingPostalCode='34567';
        ac.BillingState='West Bengal';
        ac.BillingStreet='testing';
        allList.add(ac);
        Test.startTest();
   		EvalutionGithubUpdateShippingAddress.UpdateShipAddress(allList);
        Account ac =[Select Name,BillingStreet,ShippingStreet,BillingCity from account where BillingCity ='Test' ];
        System.assertEquals(ac.BillingStreet, ac.ShippingStreet);
        Test.StopTest();
    }

}
