page 50102 "Bonus Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Bonus Setup";
    Caption='Bonus Setup';
    DeleteAllowed=false;
    InsertAllowed=false;
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Bonus Nos.";Rec."Bonus Nos.")
                {
                  ApplicationArea=all;
                  ToolTip='Specifies number series what will be used for bonus numbers';  
                }
            }
        }
    }

 trigger OnOpenPage()
    begin
        // Attempt to get the record from the table
        if not Rec.Get() then 
        begin
            // Initialize the record and insert it into the table if it doesn't exist
            Rec.Init();
            Rec.Insert();
        end;
    end;
}