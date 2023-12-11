using BooksService as service from '../../srv/books-service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stock',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Label : 'price',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate service.Books with {
    authors @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : authors_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Book overview',
            ID : 'Bookoverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'book details',
                    ID : 'bookdetails',
                    Target : '@UI.FieldGroup#bookdetails',
                },],
        },]
);
annotate service.Books with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'booktitle',
            ID : 'booktitle',
            Target : '@UI.FieldGroup#booktitle',
        },
    ],
    UI.FieldGroup #booktitle : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : descr,
                Label : 'price',
            },],
    }
);
annotate service.Books with @(
    UI.FieldGroup #BookOverview : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : price,
                Label : 'price',
            },{
                $Type : 'UI.DataField',
                Value : stock,
                Label : 'stock',
            },{
                $Type : 'UI.DataField',
                Value : descr,
                Label : 'descr',
            },{
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : currency_code,
            },],
    }
);
annotate service.Books with @(
    UI.FieldGroup #BookOverview1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Books with @(
    UI.FieldGroup #vtfv : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Books with @(
    UI.FieldGroup #bookdetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : descr,
                Label : 'descr',
            },{
                $Type : 'UI.DataField',
                Value : stock,
                Label : 'stock',
            },{
                $Type : 'UI.DataField',
                Value : price,
                Label : 'price',
            },{
                $Type : 'UI.DataField',
                Value : title,
                Label : 'title',
            },{
                $Type : 'UI.DataField',
                Value : authors_ID,
                Label : 'authors_ID',
            },{
                $Type : 'UI.DataField',
                Value : currency_code,
            },{
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },],
    }
);
