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
            TableRelation = "Products Table".No;
            trigger OnValidate()
            begin
                if Product.Get("Product No") then begin
                    "Product Name" := Product.Name;
                    "Unit Price" := Product."Unit Price";
                end;
            end;
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
        key(PK;"Header No","Product No")
        {
            Clustered = true;
        }
    }
    var
        Product: Record "Products Table";
}
