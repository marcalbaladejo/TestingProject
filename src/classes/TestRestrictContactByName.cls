@isTest
private class TestRestrictContactByName {
    @isTest static void TestInvalidName(){
        Test.startTest();
        Database.SaveResult res = Database.insert(new Contact(LastName = 'INVALIDNAME'),false);
        Test.stopTest();
        System.assert(!res.isSuccess());
        System.assert(res.getErrors().Size()>0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', res.getErrors()[0].getMessage());                           
    }
}