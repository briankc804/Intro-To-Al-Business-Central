codeunit 50110 ReceiptEmail
{
    procedure SendAnEmail()
    var
        Email: Codeunit Email;
        EmailMsg: Codeunit "Email Message";
        Instr: InStream;
        Filename: Text;
        EmailBody: Label ' Dear <b>%1<b>,<br> <p> Please find the attached document below </p><hr>';
        TempBlob: Codeunit "Temp Blob";
        Outstr: OutStream;
        ReceipNo: Record "Receipts Header Table";
        CompInfo: Record "Company Information";




    begin
        EmailMsg.Create('briancheruiyot220@gmail.com', 'Sending an email in Al', '', true);
        EmailMsg.AppendToBody(StrSubstNo(EmailBody, UserId));

        // if UploadIntoStream('select the file', '', 'This Files|*.jpg,*.pdf;*.docx;*.xlsx;*.png', Filename, Instr) then
        //     EmailMsg.AddAttachment(Filename, '', Instr)
        // else
        //     Message('There was an error uploading, %1', GetLastErrorText());
        Filename := Format(ReceipNo.No) + '- Receipt.PDF';
        TempBlob.CreateOutStream(Outstr);
        Report.SaveAs(Report::"Receipt Line Report", '', ReportFormat::Pdf, Outstr);
        TempBlob.CreateInStream(Instr);
        // Report.SaveAsPdf(Report::"Receipt Line Report",CompInfo."Industrial Classification" + Filename);

        EmailMsg.AddAttachment(Filename, '', Instr);

        if Email.Send(EmailMsg) then
            Message('The email was sent sucessfully')
        else
            Message('There was an error sending the email, %1', GetLastErrorText());
    end;


    ///For uploading streams
    procedure Upload()
    var
        Email: Codeunit Email;
        EmailMsg: Codeunit "Email Message";
        Instr: InStream;
        Filename: Text;
        EmailBody: Label ' Dear <b>%1<b>,<br> <p> Please find the attached document below </p><hr>';

    begin
        //
        EmailMsg.Create('briancheruiyot220@outlook.com', 'Sending an email in Al', '', true);
        EmailMsg.AppendToBody(StrSubstNo(EmailBody, UserId));
        if UploadIntoStream('select the file', '', 'This Files|*.jpg,*.pdf;*.docx;*.xlsx;*.png', Filename, Instr) then
            EmailMsg.AddAttachment(Filename, '', Instr)
        else
            Message('There was an error uploading, %1', GetLastErrorText());
        if Email.Send(EmailMsg) then
            Message('The email was sent sucessfully')
        else
            Message('There was an error sending the email, %1', GetLastErrorText());
    end;
}