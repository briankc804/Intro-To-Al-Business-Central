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
                }
            }

        }
    }

    actions
    {

        area(Processing)
        {
            action("Posting")
            {

                Caption = 'Posting';
                ApplicationArea = All;
                Image = Insurance;
                trigger OnAction()
                begin
                    Rec.Name := 'new_area';
                    Rec.Modify();
                    customer.Run();
                    Message('saved');
                end;
            }
        }
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Category_Process';

                actionref("Posting_Promoted"; "Posting")
                {
                }
            }
        }


    }
    var
        customer: Page "Customer Card";
}