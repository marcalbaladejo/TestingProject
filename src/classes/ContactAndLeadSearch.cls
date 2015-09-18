public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(string textToSearch){
        List<List<sObject>> res = [FIND :textToSearch IN ALL FIELDS RETURNING Contact(Name), Lead(Name)];
        return res;
    }

}