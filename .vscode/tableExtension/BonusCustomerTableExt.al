tableextension 50100 "Bonus Customer" extends Customer
{
    fields
    {
       field(50100; Bonuses; Integer)
       {
        Caption='Bonuses';
        FieldClass=FlowField;
        CalcFormula=count("Bonus Header" where("Customer No."= field("No.")));
        Editable=false;
       }
    }

    var
BonusExistsErr: Label 'You can not delete Customer %1 because there is at least one Bonus assigned.';
trigger OnBeforeDelete()
var
BonusHeader: Record "Bonus Header";
begin
BonusHeader.SetRange("Customer No.", "No.");
if not BonusHeader.IsEmpty() then
Error(BonusExistsErr, "No.");
end;
}