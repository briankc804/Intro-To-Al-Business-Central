page 50101 "Customer Table Fields"
{
    ApplicationArea = All;
    Caption = 'Customer Table Fields';
    PageType = Card;
    SourceTable = "Customer Table Fields";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(No; Rec.No)
                {
                }
                field(Name; Rec.Name)
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
