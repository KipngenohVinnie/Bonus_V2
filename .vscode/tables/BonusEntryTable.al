table 50105 "Bonus Entry"
{
    DataClassification = ToBeClassified;
    Caption='Bonus Entry';
    fields
    {
        field(1;"Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(2;"Bonus No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation="Bonus Header";
            Editable=false;
        }
        field(3;"Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation="Sales Invoice Header";
            Editable=false;
        }
        field(4;"Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation=Item;
            Editable=false;
        }
        field(5;"Posting Date"; Date)
        {
            DataClassification = ToBeClassified;
            Editable=false;
        }
        field(6;"Bonus Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable=false;
        }
    }
    
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}