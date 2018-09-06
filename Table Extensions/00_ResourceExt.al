tableextension 123456700 "CSD ResourceExt" extends Resource
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            
            begin
                Rec.TestField("Unit Cost")
            end;
        }
        field(123456701;"CSD Resource Type";Option)
        {
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal, External';
            Caption = 'Resource Type';
            DataClassification = ToBeClassified;
        }
        field(123456702;"CSD Maximum Participants";Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703;"CSD Quantity Per Day";Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
    
}