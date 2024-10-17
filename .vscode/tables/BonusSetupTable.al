table 50102 "Bonus Setup"
{
    DataClassification = CustomerContent;
    Caption='Bonus setup';
    
    fields
    {
            field(1;"Primary Key"; Code[20])
        {
            DataClassification = CustomerContent;
            
        }
            field(2;"Bonus Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation="No. Series";
            
        }
        field(3;"Bonus No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation="No. Series";
            
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    
}