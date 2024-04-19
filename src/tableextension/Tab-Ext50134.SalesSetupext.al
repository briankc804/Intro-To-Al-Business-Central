//for custom tables number series to change at sales and receivables setup

tableextension 50134 SalesSetupext extends "Sales & Receivables Setup"
{
    fields
    {
        // Add changes to table fields here
        field(120; CustomerNo; Code[10])
        {
            TableRelation = "No. Series";
        }
    }

}


//page extension
pageextension 50106 SalesPage extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field(CustomerNo; Rec.CustomerNo)
            {
                ApplicationArea = all;
                Caption = 'Customer Test';
                // TableRelation = "No. Series";
            }
        }
    }


}


table 50111 "Customer Table Fields"
{
    Caption = 'Customer Table Fields';
    DataClassification = ToBeClassified;

    fields
    {
        field(2; No; Code[49])
        {
            Caption = 'No';
            Editable = False;
            TableRelation = "No. Series";
            

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

        field(7; "No series"; Code[20])
        {
            TableRelation = "No. Series";
            Caption = 'No series';
        }


    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    var
        SalesSetup: Record "Sales & Receivables Setup";
        noseries: Codeunit NoSeriesManagement;


    trigger OnInsert()
    begin
        If rec."No" = '' then begin
            noseries.InitSeries('CUST-NO', xRec."No series", 0D, "No", "No series");

        end;
    end;
}
