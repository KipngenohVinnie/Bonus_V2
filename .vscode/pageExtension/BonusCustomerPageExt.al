pageextension 50100 "Bonus Customer List" extends "Customer List"
{
    layout
    {
      addlast(Control1)
    
    {
       field(Bonuses;Rec.Bonuses)
       {
        ApplicationArea=All;
        ToolTip='Shows number of assgined bonuses to customer.';
       }
    }
    }
}
