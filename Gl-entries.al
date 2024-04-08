Pageextension 50112 CharOFA extends "Chart of Accounts"
{
    actions
    {
        addfirst(processing)
        {
            action(Test)
            {
                caption = 'Post something';
                ApplicationArea = all;
                trigger OnAction()
                var
                    GLPost : Codeunit "Gen. Jnl.-Post Line";
                    Line: Record "Gen. Journal Line";
                begin
                    Line.Init();
                    Line."Posting Date" := TODAY();
                    Line."Document Type" := Line."Document Type"::" ";
                    Line."Document No." := 'x000001';
                    Line."Account Type" := Line."Account Type" ::"G/L Account";
                    Line."Account No." := '10910';
                    Line.Description := 'Products Testing';
                    Line.Amount := 100;
                    Line."Bal. Account Type" := Line."Bal. Account Type"::"G/L Account";
                    Line."Bal. Account No." := '10920';
                    GLPost.RunWithCheck(Line);


                end;    
            }
        }
    }
}