table 50105 "Products Table"
{
    Caption = 'Products Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No"; Code[50])
        {
            Caption = 'No ';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
        }
        field(4; "Unit Measure"; Option)
        {
            OptionMembers = " ",Pieces,Kg,Grams;
            Caption = 'Unit Measure';
        }
        field(5; "Available Quantity"; Decimal)
        {
            Caption = 'Available Quantity';
        }
    }
    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }
}
