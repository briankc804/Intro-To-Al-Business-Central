report 50108 "Report Customer"
{
    ApplicationArea = All;
    Caption = 'Report Customer';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Receipts.RDLC';

    dataset
    {
        dataitem(CustomerTableFields; "Customer Table Fields")
        {
            column(No; No)
            {
            }
            column(Name; Name)
            {
            }
            column(Gender; Gender)
            {
            }
            column(DOB; DOB)
            {
            }
            column(Email; Email)
            {
            }
            column(PhoneNumber; "Phone Number")
            {
            }
        }
        dataitem(Receipt; "Receipts Header Table")
        {
            //DataItemLink = CustomerTableFields.No = field(CustomerNo);
            // DataItemLink = where Receipt.CustomerID = CustomerTableFields.CustomerID;

            column(CustomerNo; CustomerNo)
            {
            }
        }
        dataitem(ReceiptLines; "Receipts Lines")
        {
            column(Product_No; "Product No")
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
