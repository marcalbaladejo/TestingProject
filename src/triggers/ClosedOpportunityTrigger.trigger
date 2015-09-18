trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> tasksToAdd = new List<Task>();
    for (Opportunity o: [SELECT Id, Name FROM Opportunity WHERE Id IN :Trigger.New AND StageName = 'Closed Won']) {
        tasksToAdd.add(new Task(Subject = 'Follow Up Test Task', WhatId = o.id));        
    }
    if (tasksToAdd.size()>0)
        insert tasksToAdd;
}