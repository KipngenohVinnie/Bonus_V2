page 50106 "Bonus Entry"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Bonus Entry";
    Editable=false;
    DeleteAllowed=false;
    InsertAllowed=false;
    ModifyAllowed=false;
    Caption='Bonus Entries';
    
    layout
    {
        area(Content)
        {
            repeater(Control)
            {
               field("Entry No."; Rec."Entry No.")
                    {
                    ApplicationArea = All;
                    ToolTip = 'Specifies entry number for the ledger.';
                    }
                    field("Bonus No."; Rec."Bonus No.")
                    {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus number.';
                    }
                    field("Document No."; Rec."Document No.")
                    {
                    ApplicationArea = All;
                    ToolTip = 'Specifies sales invoice number.';
                    }
                    field("Item No."; Rec."Item No.")
                    {
                    ApplicationArea = All;
                    ToolTip = 'Specifies item number.';
                    }
                    field("Posting Date"; Rec."Posting Date")
                    {
                    ApplicationArea = All;
                    ToolTip = 'Specifies sales invoice posting date.';
                    }
                    field("Bonus Amount"; Rec."Bonus Amount")
                    {
                    ApplicationArea = All;
                    ToolTip = 'Specifies calculated bonus amount.';
            }
        }
        }
    }
}