page 50101 "Customer Table Fields"
{
    ApplicationArea = All;
    Caption = 'Customer Table Fields';
    PageType = Card;
    SourceTable = "Customer Table Fields";
    UsageCategory = Administration;
    DelayedInsert = false;
    

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
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
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
                    Editable = true;
                    ShowMandatory = true;
                    NotBlank = true;

                    trigger OnValidate()
                    begin
                        if (Rec."Phone Number" < 10) then 
                            Error('Minimum characters should be 10');
                        
                    end;
                }
            }
        }
    }
    
}
