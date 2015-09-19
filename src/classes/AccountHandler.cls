public class AccountHandler {
    public static Account insertNewAccount(string AccountName) {
    	// this class has changed
        Account a = null;
        try {
        	a = new Account(Name = AccountName);
        	insert a;            
        }
        catch (DMLException e) {
            System.debug('Error inserting:  ' + e.getMessage());
            a = null;
        }        
        return a;
        
    }

}