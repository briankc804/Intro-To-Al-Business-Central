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
                    "Amount" := "Quantity" * "Unit Price";
                   
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
            trigger OnValidate()
            begin
                // Recalculate amount when unit price changes
               "Amount" := "Quantity" * "Unit Price";
            end;
        }
        field(5; Quantity; Decimal)
        {
            Caption = 'Quantity';
            trigger OnValidate()
            begin
                // Recalculate amount when quantity changes
                "Amount" := "Quantity" * "Unit Price";
            end;
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
          
        }
        field(7; Lineno; Integer)
        {
            AutoIncrement = true;
        }
    }
    keys
    {
        key(PK; "Header No", Lineno)
        {
            Clustered = true;
        }
    }
    var
        Product: Record "Products Table";
 

    
   

}
