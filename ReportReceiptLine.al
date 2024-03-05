report 50100 "Receipt Line Report"
{
    ApplicationArea = All;
    Caption = 'Receipt Line Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(ReceiptsLines; "Receipts Lines")
        {
            column(HeaderNo; "Header No")
            {
            }
            column(ProductNo; "Product No")
            {
            }
            column(ProductName; "Product Name")
            {
            }
            column(UnitPrice; "Unit Price")
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(Amount; Amount)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
