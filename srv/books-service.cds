using books from '../db/schema';
@path: '/srv/books'

service BooksService {

    entity Books @(restrict:[
        {
            grant: [
                'READ',
                'UPDATE',
                'DELETE',
                'WRITE'
            ],
            to : 'Admin'
        },
        {
            grant:['READ'],
            to: 'Viewer'
        }
    ])
    
    as projection on books.Books;
    
        entity Authors @(restrict:[
        {
            grant: [
                'READ',
                'UPDATE',
                'DELETE',
                'WRITE'
            ],
            to : 'Admin'
        },
        {
            grant:['READ'],
            to: 'Viewer'
        }
    ])

    
    as projection on books.Authors;
}