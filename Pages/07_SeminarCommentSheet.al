page 123456707 "CSD Seminar Comment List"
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    Editable = false;
    SourceTable = "CSD Seminar Comment Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                    
                }
                field(Code;Code)
                {
                    Visible = false;
                }
                field(Comment;Comment)
                {
                    
                }
            }
        }
    }

}