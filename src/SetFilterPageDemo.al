// pageextension 50111 "FilterExtension" extends "Products Table List" 
// {
//    actions
//    {
//     addfirst(Processing)
//     {
//         action("Setfilter")
//         {
//             ApplicationArea = all;
//             Caption = 'Set filter';
//             Promoted = true;
//             PromotedCategory = Process;
//             PromotedIsBig = true;

//             trigger OnAction()
//             begin
//                 Rec.SetFilter("No", '1003');
//             end;
//         }
//     }
//    }
   
// }