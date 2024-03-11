page 50103 "My Vendor Card"
{
    ApplicationArea = All;
    Caption = 'My Customer Card';
    PageType = Card;
    SourceTable = "Vendor test";
    

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount Paid"; Rec."Amount Paid")
                {
                }
                field("Balance"; Rec."Balance")
                {
                }
                field(Status; Rec.Status)
                {
                }
                field(Posted; Rec.Posted)
                {
                }
            }
        }
    }
}
