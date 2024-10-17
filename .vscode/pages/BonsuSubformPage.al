page 50105 "Bonus Subform"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Bonus Line";
    Caption='Lines';
    
    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
               field(Type; Rec.Type)
                    {
                    ApplicationArea = All;
                    Tooltip = 'Specifies type of the bonus assigned.';
                    }
                    field("Item No."; Rec."Item No.")
                    {
                    ApplicationArea = All;
                    Tooltip = 'Specifies item number for which bonus is assigned.';
                    }
                    field("Bonus Perc";Rec."Bonus Perc")
                    {
                    ApplicationArea = All;
                    Tooltip = 'Specifies bonus percent.';
                    }
            }
        }
    }
}