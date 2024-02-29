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
                    Rec.Posted := true;
                    rec.Modify();
                    Message(Format(Rec.Balance));
                end;
            }

        }

        area(Navigation)
        {
            action("Vendor")
            {
                ApplicationArea = all;
                Caption = 'Vendor details';
                RunObject = Page "My Vendor Card";



            }
            action("vendor-test list")
            {
                ApplicationArea = all;
                Caption = 'Vendor list details';
                RunObject = Page "C";



            }
        }

        area(Creation)
        {
            action("New Customer")
            {
                ApplicationArea = All;
                RunObject = Page "Customer Card";
                Image = Post;

            }
        }


    }
    var
        customer: Page "Customer Card";
}