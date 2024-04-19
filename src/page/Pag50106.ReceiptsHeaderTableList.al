page 50106 "Receipts Header Table List"
{
    ApplicationArea = All;
    Caption = 'Receipts Header Table List';
    PageType = List;
    CardPageId = "Receipts Header Table Page";
    SourceTable = "Receipts Header Table";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                }
                field(CustomerNo; Rec.CustomerNo)
                {
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field("Sent to Customer"; Rec."Sent to Customer")
                {
                    ToolTip = 'Specifies the value of the Sent to Customer field.';
                }
                field("Total  Amount"; Rec."Total  Amount")
                {
                    ToolTip = 'Specifies the value of the Total  Amount field.';
                }
            }
        }
    }
}
