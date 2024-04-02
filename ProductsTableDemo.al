table 50105 "Products Table"
{
    Caption = 'Products Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No"; Code[50])
        {
            Caption = 'No ';
            Editable = False;
            TableRelation = "No. Series";
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
        field(7; "No Series"; Code[20])
        {
            TableRelation = "No. Series";
            Caption = 'No Series';
        }
    }
    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }
    var
        SalesSetup: Record "Sales & Receivables Setup";
        Noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        If rec."No" = '' then begin
            Noseries.InitSeries('PROD-NO', xRec."No Series", 0D, "No", "No Series");

        end;
    end;    
}
