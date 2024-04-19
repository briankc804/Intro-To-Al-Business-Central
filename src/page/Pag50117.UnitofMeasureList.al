page 50117 "Unit of Measure List"
{
    ApplicationArea = All;
    Caption = 'Unit of Measure List';
    PageType = List;
    SourceTable = "Product Unit of Measure";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ToolTip = 'Specifies the value of the Unit of Measure field.';
                }
            }
        }
    }
}
