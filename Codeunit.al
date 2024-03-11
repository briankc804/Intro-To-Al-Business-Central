codeunit 50110 Emailcodeunit
{
    procedure SendAnEmail()
    var
        Email: Codeunit Email;
        EmailMsg: Codeunit "Email Message";
        Instr: InStream;
        Filename: Text;
        EmailBody: Label ' Dear <b>%1<b>,<br> <p> Please find the attached document below </p><hr>';

    begin
        EmailMsg.Create('briankc804@gmail.com', 'Sending an email in Al', '', true);
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