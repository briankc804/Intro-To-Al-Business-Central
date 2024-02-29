page 50100 "C"
{
    ApplicationArea = All;
    Caption = 'vendor-test list';
    PageType = List;
    //CardPageId =
    SourceTable = "Vendor test";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount Paid"; Rec."Amount Paid")
                {
                }
                field("Balance"; Rec."Balance")
                {
                }
                field(Status; Rec.Status)
                {
                }
                field(Posted; Rec.Posted)
                {
                }
            }
        }
    }
    views
    {
        view("Posted Vendor Test")
        {
            Caption = 'Posted Vendor Test';
            Filters = where(Status = filter(Posted));
            SharedLayout = true;
        }

        view("Not Posted Vendor Test")
        {
            Caption = 'Not Posted Vendor Test';
            Filters = where(Status = filter("Not posted"));
            SharedLayout = true;
        }
    }
}