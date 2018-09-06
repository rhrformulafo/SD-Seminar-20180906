pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {

        modify(Type)
        {
            Visible = Showtype;
        }

        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }

            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxFields;
            }
        }
    }

    trigger OnOpenPage();
    begin

        FilterGroup(3);

        Showtype := (GetFilter(Type) = '');

        ShowMaxFields := (GetFilter(Type) = format(Type::Machine));

        FilterGroup(0);

    end;

    var
        [InDataSet]
        ShowMaxFields: Boolean;

        [InDataSet]
        Showtype: Boolean;

}