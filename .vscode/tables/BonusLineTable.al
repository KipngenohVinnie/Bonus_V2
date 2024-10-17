table 50104 "Bonus Line"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation="Bonus Header";
        }
        field(2;"Type"; Enum "Bonus Type")
        {
            DataClassification = ToBeClassified;
            // TableRelation="Bonus Header";
        }
        field(3;"Item No."; Code[20])
        {
            DataClassification=CustomerContent;
            Caption='Item No.';
            TableRelation=if(Type=filter(item))Item;
        }
        field(4; "Bonus Perc"; Integer)
        {
            DataClassification=CustomerContent;
            Caption='Bonus Perc';
            MinValue=0;
            MaxValue=100;
        }
    }
    
    keys
    {
        key(PK; "Document No.", Type, "Item No.")
        {
            Clustered = true;
        }
    }   
}