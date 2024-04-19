page 50108 "Products Table List"
{
    ApplicationArea = All;
    Caption = 'Products Table List';
    PageType = List;
    CardPageId = "Products Table Page";
    SourceTable = "Products Table";
    
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                }
                field(Name; Rec.Name)
                {
                }
                field("Unit Price"; Rec."Unit Price")
                {
                }
                field("Unit Measure"; Rec."Unit Measure")
                {
                }
                field("Available Quantity"; Rec."Available Quantity")
                {
                }
            }
        }
    }
}
