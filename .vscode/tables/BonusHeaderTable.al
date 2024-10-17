table 50103 "Bonus Header"
{
    DataClassification = CustomerContent;
    Caption='Bonus Header';
    DrillDownPageId="Bonus List";
    LookupPageId="Bonus List";
    
    fields
    {
        field(1;"No."; code[20])
        {
            DataClassification = CustomerContent;
            Caption='No';
            
        }
        field(2; "Customer No."; Code[20])
        {
        DataClassification = CustomerContent;
        Caption = 'Customer No.';
        TableRelation = Customer;
        }
        field(3; "Starting Date"; Date)
        {
        DataClassification = CustomerContent;
        Caption = 'Starting Date';
        }
        field(4; "Ending Date"; Date)
        {
        DataClassification = CustomerContent;
        Caption = 'Ending Date';
        }
         field(5; "Status"; Enum "Bonus Status")
        {
        DataClassification = CustomerContent;
        Caption = 'Status';
        }
        field(6; "No. Series"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Series';
        }

    }
    
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
trigger OnInsert()
var
    NoSeriesMgt: Codeunit "NoSeriesManagement";
    Setup: Record "Bonus Setup"; //setup table name
begin
    // Check if "No." is empty
    IF "No." = '' THEN 
    BEGIN
        // Retrieve setup information
        Setup.GET;
        Setup.TESTFIELD("Bonus Nos."); // Ensure the number series is set up for bonuses

        // Initialize and assign the next number in the series
        NoSeriesMgt.InitSeries(Setup."Bonus Nos.", xRec."No. Series", 0D, "No.", "No. Series");
    END;
end;
}