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

actions
{
    area(Processing)
    {
action(Receipts)
{
    ApplicationArea = All;
    Promoted = true;
    PromotedCategory= Report;
    PromotedIsBig = true;
    Image = Report;
    
    trigger OnAction()
    begin
        receiptH.Reset();
        receiptH.SetRange(receiptH.No,receiptL."Header No");
        if receiptH.Find('-') then begin
            Report.Run(50100,true,false,receiptH);
        end;
    end;
}
    }
}
var
    receiptH: Record "Receipts Header Table";
    receiptL: Record "Receipts Lines";

}

