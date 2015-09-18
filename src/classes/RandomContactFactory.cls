public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(integer numOfContacts, string contactsLastName){
        List<Contact> contactsList = new List<Contact>();
        for (integer i = 0; i < numOfContacts; i++) {
            contactsList.add(new Contact(FirstName = 'Test'+i, LastName = contactsLastName));
        }
        return contactsList;
    }

}