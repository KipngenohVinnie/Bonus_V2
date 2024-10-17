page 50104 "Bonus Card"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Bonus Header";
    Caption='Bonus Card';
    
    layout
    {
        area(Content)
        {

            group(General)
            {
                Caption='General';
                field("No."; Rec."No.")
                        {
                        ApplicationArea = All;
                        ToolTip = 'Specifies bonus number.';
                        }
                        field("Customer No."; Rec."Customer No.")
                        {
                        ApplicationArea = All;
                        ToolTip = 'Specifies bonus customer number.';
                        }
                        field("Starting Date"; Rec."Starting Date")
                        {
                        ApplicationArea = All;
                        ToolTip = 'Specifies bonus starting date.';
                        }
                        field("Ending Date"; Rec."Ending Date")
                        {
                        ApplicationArea = All;
                        ToolTip = 'Specifies bonus ending date.';
                        }
                        field(Status; Rec.Status)
                        {
                        ApplicationArea = All;
                        ToolTip = 'Specifies bonus status.';
                        }
                 }
                             part(lines; "Bonus Subform")
            {
                ApplicationArea=All;
                SubPageLink="Document No."=field("No.");
            }
            }
        }
    
       actions
    {
        area(Navigation)
        {
            action(CustomrCard)
            {
                ApplicationArea=All;
                Caption='Customer Card';
                Image=Customer;
                Promoted=true;
                PromotedCategory=Process;
                RunObject=page "Customer Card";
                RunPageLink="No."=field("Customer No.");
                ToolTip='Open customer card';
            }
            action(BonusEntries)
                {
                ApplicationArea = All;
                Caption = 'Bonus Entries';
                Image = Entry;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Bonus Entry";
                RunPageLink = "Bonus No." = field("No.");
                ToolTip = 'Opens bonus entries.';
                }
        }
    }
}