Page 50103 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Vendor test";


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Input';
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }
                field("Amount"; Rec."Amount")
                {
                    ApplicationArea = All;
                }
                field("Amount Paid"; Rec."Amount Paid")
                {
                    ApplicationArea = All;
                }

            }

            group(Output)
            {
                Caption = 'Output';
                field("Balance"; Rec."Balance")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {

        area(Processing)
        {
            action("Calculating Balance")
            {

                Caption = 'Calculating Balance';
                ApplicationArea = All;
                Image = Insurance;
                trigger OnAction()
                begin
                    Rec.Balance := Rec.Amount - Rec."Amount Paid";
                    rec.Modify();
                end;
            }

            // area(Processing)
            // {
            //     action("Posting")
            //     {

            //         Caption = 'Posting';
            //         ApplicationArea = All;
            //         Image = Insurance;
            //         trigger OnAction()
            //         begin
            //             Rec.Name := 'new_area';
            //             Rec.Modify();
            //             Commit();
            //             customer.Run();
            //             Message('saved');
            //         end;
            //     }
        }
        // area(Promoted)
        // {
        //     group(Category_Process)
        //     {
        //         Caption = 'Category_Process';

        //         actionref("Posting_Promoted"; "Calculate balance    ")
        //         {
        //         }
        //     }
        // }


    }
    var
        customer: Page "Customer Card";
}