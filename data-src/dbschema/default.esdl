module default {
    type Repo {
        required property name -> str;      
        property owner -> str;           
        property creation_date -> datetime;            
        property description -> str;    
        multi link issues -> Issue;            
    }

    type Issue {
        required link repo -> Repo;  
        required property title -> str;           
        required property creation_date -> datetime;           
        property last_activity_date -> datetime;           
        property status -> str;          
        required property body -> str;       
    }
}
