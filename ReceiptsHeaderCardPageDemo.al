page 50105 "Receipts Header Table Page"
{
    ApplicationArea = All;
    Caption = 'Receipts Header Table Page';
    PageType = Card;
    SourceTable = "Receipts Header Table";

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
                field(CustomerNo; Rec.CustomerNo)
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field("Date"; Rec."Date")
                {
                }
                field("Sent to Customer"; Rec."Sent to Customer")
                {
                }
                field("Total  Amount"; Rec."Total  Amount")
                {
                }


            }
            part(ReceiptLines; "Receipts Lines Listpart")
            {
                Caption = 'Receipt Lines';
                SubPageLink = "Header No" = field(FILTER(No));
            }
        }
    }
}
