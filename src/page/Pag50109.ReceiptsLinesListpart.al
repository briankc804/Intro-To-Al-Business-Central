page 50109 "Receipts Lines Listpart"
{
    ApplicationArea = All;
    Caption = 'Receipts Lines Listpart';

    PageType = ListPart;
    SourceTable = "Receipts Lines";


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Header No"; Rec."Header No")
                {
                }
                field("Product No"; Rec."Product No")
                {
                }
                field("Product Name"; Rec."Product Name")
                {
                }
                field("Unit Price"; Rec."Unit Price")
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field(Amount; Rec.Amount)
                {
                    Editable =  false;
                }
            }
        }
    }
}
