report 50100 "Receipt Line Report"
{
    ApplicationArea = All;
    Caption = 'Receipt Line Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './Receipt Line Report.RDL';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem("Receipts Header Table"; "Receipts Header Table")
        {
            column(No; No)
            {

            }
            column(CustomerNo; CustomerNo)
            {

            }
            column(Customer_Name; "Customer Name")
            {

            }
            dataitem(ReceiptsLines; "Receipts Lines")
            {
                DataItemLink = "Header No" = field(No);

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
