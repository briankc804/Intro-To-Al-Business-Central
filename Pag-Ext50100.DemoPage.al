
pageextension 50100 "Demo Page" extends "Accountant Role Center"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter(Journals)
        {
            group(Demo)
            {
                Caption = 'Demo Training';
                ToolTip = 'Training.';
                action(Training)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Customer Table Fields List';
                    RunObject = Page "Customer Table Fields List";

                }
                action(Products)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Products Table List';
                    RunObject = Page "Products Table List";
                }
                action(Receipt)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Receipts Header Table List';
                    RunObject = Page "Receipts Header Table List";
                }

            }
        }
    }

    var
        myInt: Integer;
}
