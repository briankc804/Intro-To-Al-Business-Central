table 50106 "Receipts Header Table"
{
    Caption = 'Receipt Header';
    DataClassification = ToBeClassified;

    fields
    {

        field(1; No; Code[50])
        {
            Caption = 'No';
            Editable = false;

        }

        field(2; "CustomerNo"; Code[50])
        {
            Caption = 'Customer No';
            NotBlank = true;
            TableRelation = "Customer Table Fields";

            trigger OnValidate()
            var
                customer2: Record "Customer Table Fields";
            begin
                customer2.Reset();
                customer2.SetRange(No, CustomerNo);
                if customer2.Find('-') then
                    "Customer Name" := customer2.Name;

            end;
        }
        field(3; "Customer Name"; Text[70])
        {
            Caption = 'Customer Name';
        }
        field(4; "Date"; Date)
        {
            Caption = 'Date';
        }
        field(5; "Sent to Customer"; Boolean)
        {
            Caption = 'Sent to Customer';
        }
        field(6; "Total  Amount"; Decimal)
        {


            Caption = 'Total  Amount';
            FieldClass = FlowField;
            CalcFormula = sum("Receipts Lines".Amount where("Header No" = field(No)));
     
            Editable = false;
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        ReceiptCode: Record "Receipts Header Table";
    begin
        if No = '' then begin
            ReceiptCode.Reset();
            if ReceiptCode.FindLast() then begin
                Rec.No := IncStr(ReceiptCode.No);
            end else
                Rec.No := 'Receipt01';

        end;
    end;
}
