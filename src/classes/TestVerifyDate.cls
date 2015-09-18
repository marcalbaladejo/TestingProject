@isTest
public class TestVerifyDate {
    @isTest static void testDateInRange() {
        Date date1 = Date.newInstance(2015, 1, 1);
        Date date2 = Date.newInstance(2015, 1, 15);
                
        Date res = VerifyDate.CheckDates(date1, date2);       
        
        System.assertEquals(Date.newInstance(2015, 1, 15), res);                
    }
    
    @isTest static void testDateOutOfRange() {
        Date date1 = Date.newInstance(2015, 1, 1);
        Date date2 = Date.newInstance(2015, 2, 15);
                
        Date res = VerifyDate.CheckDates(date1, date2);       
        
        System.assertEquals(Date.newInstance(2015, 1, 31), res);                
    }
    
}