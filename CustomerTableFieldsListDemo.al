page 50104 "Customer Table Fields List"
{
    ApplicationArea = All;
    Caption = 'Customer Table Fields List';
    PageType = List;
    CardPageId = "Customer Table Fields";
    SourceTable = "Customer Table Fields";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                }
                field(No; Rec.No)
                {
                }
                field(Gender; Rec.Gender)
                {
                }
                field(DOB; Rec.DOB)
                {
                }
                field(Email; Rec.Email)
                {
                }
                field("Phone Number"; Rec."Phone Number")
                {
                }
            }
        }
    }
}
