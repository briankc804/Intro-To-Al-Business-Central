table 50103 "Vendor test"
{
    Caption = 'Vendor';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[50])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = Vendor;
            trigger OnValidate()
            var
                VendorVal: Record Vendor;
            begin
                if "Code" <> '' then begin
                    VendorVal.Reset();
                    VendorVal.SetRange("No.", "Code");
                    if VendorVal.find('-') then
                        Name := VendorVal.Name;
                end;

            end;
        }
        field(2; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(3; Amount; Integer)
        {
            Caption = 'Amount';
        }
        field(4; "Amount Paid"; Decimal)
        {
            Caption = 'Amount Paid';
        }
        field(5; "Balance"; Decimal)
        {
            Caption = 'Balance';
        }
        field(6; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Posted,"Not posted";
        }
        field(7; Posted; Boolean)
        {
            Caption = 'Posted';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}

table 50101 "Vendor test POSTED"
{
    Caption = 'Vendor';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[50])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(3; Amount; Integer)
        {
            Caption = 'Amount';
        }
        field(4; "Amount Paid"; Decimal)
        {
            Caption = 'Amount Paid';
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Posted,"Not posted";
        }
        field(6; Posted; Boolean)
        {
            Caption = 'Posted';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}

