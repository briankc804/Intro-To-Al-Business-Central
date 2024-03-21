page 50107 "Products Table Page"
{
    ApplicationArea = All;
    Caption = 'Products Table Page';
    PageType = Card;
    SourceTable = "Products Table";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
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
