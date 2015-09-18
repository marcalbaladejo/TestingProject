public class NewCaseListController {
    public List<Case> getNewCases() {
        List<Case> casesList = Database.query('SELECT Id, CaseNumber FROM Case WHERE Status = \'New\'');
        return casesList;
    }

}