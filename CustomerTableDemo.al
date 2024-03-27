table 50111 "Customer Table Fields"
{
    Caption = 'Customer Table Fields';
    DataClassification = ToBeClassified;

    fields
    {

        field(2; No; Code[49])
        {
            Caption = 'No';
            //   NotBlank = true;
            //TableRelation = "No. Series".Code;
            // trigger OnValidate()
            // var
            //     customer2: Record "Customer Table Fields";
            // begin
            //     customer2.Reset();
            //     if customer2.FindLast() then begin
            //         Rec.No := IncStr(customer2.No);
            //     end else begin
            //         Rec.No := 'Customer01';
            //     end;
            // end;
        }
        field(1; Name; Text[250])
        {
            Caption = 'Name';

        }
        field(3; Gender; Option)
        {
            Caption = 'Gender';
            OptionMembers = "male","female";

        }
        field(4; DOB; Date)
        {
            Caption = 'DOB';
        }
        field(5; Email; Text[50])
        {
            Caption = 'Email';
        }
        field(6; "Phone Number"; Integer)
        {
            Caption = 'Phone Number';
        }

        field(7; "No.Series"; Code[20])
        {
            Caption = 'Phone Number';
        }


    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    // trigger OnInsert()
    // var
    //     Setup: Record "Customer Table Fields";

    // begin
    //     if Rec.No = '' then begin
    //         Setup.Get(Rec.No);
    //         Rec.No := NoSeriesMgt.GetNextNo(Setup."No.Series", WORKDATE, true)
        
    //     end;
    // end;

    // var
    //     NoSeriesMgt: Codeunit NoSeriesManagement;
        
    // trigger OnInsert()
    // var
    //     NoSeriesMgt: Codeunit NoSeriesManagement;
    //     current: Record "Customer Table Fields";
    //     NewNo: Code[20];
    // begin
    //     if Rec.No = '' then
    //     begin
    //       //  NewNo := NoSeriesMgt.GetNextNo(Rec.No. Code);
    //         Rec.No := NewNo;
    //     end;
    // end;
}
