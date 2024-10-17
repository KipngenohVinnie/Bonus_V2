page 50103 "Bonus List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Bonus Header";
    Editable = false;
    CardPageId = "Bonus Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus number.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer number.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the starting date.';
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ending date.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus status.';
                }
            }
        }
    }


    actions
    {
        area(Navigation)
        {
            action(CustomrCard)
            {
                ApplicationArea = All;
                Caption = 'Customer Card';
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Customer Card";
                RunPageLink = "No." = field("Customer No.");
                ToolTip = 'Open customer card';
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