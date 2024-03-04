table 50107 "Receipts Lines"
{
    Caption = 'Receipts Lines';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Header No"; Code[50])
        {
            Caption = 'Header No ';

        }
        field(2; "Product No"; Code[50])
        {
            Caption = 'Product No';
        }
        field(3; "Product Name"; Text[50])
        {
            Caption = 'Product Name ';
        }
        field(4; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price ';
        }
        field(5; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
        }
    }
    keys
    {
        key(PK; "Header No")
        {
            Clustered = true;
        }
    }
}
