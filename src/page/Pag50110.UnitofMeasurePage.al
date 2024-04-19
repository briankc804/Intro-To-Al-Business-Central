page 50110 "Unit of Measure Page"
{
    ApplicationArea = All;
    Caption = 'Unit of Measure Page';
    PageType = Card;
    SourceTable = "Product Unit of Measure";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ToolTip = 'Specifies the value of the Unit of Measure field.';
                }
            }
        }
    }
}
