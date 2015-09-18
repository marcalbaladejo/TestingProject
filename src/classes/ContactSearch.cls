public class ContactSearch {
    public static List<Contact> searchForContacts(string contactLastName, string contactPostalCode) {
        List<Contact> cl = [SELECT Name FROM Contact WHERE LastName = :contactLastName AND MailingPostalCode = :contactPostalCode];
        return cl;
    }
}