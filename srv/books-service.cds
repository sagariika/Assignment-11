using books from '../db/schema';

service BooksService {
    entity Books as projection on books.Books;
    entity Authors as projection on books.Authors;
}