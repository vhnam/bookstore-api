const { Model } = require('objection');

const Author = require('./author');
const Category = require('./category');

class Book extends Model {
  static get tableName() {
    return 'bookdescriptions';
  }

  static get idColumn() {
    return 'ISBN';
  }

  static get jsonSchema() {
    return {
      type: 'object',
      required: [
        'title',
        'description',
        'price',
        'publisher',
        'pubdate',
        'edition',
        'pages'
      ],

      properties: {
        ISBN: { type: 'string' },
        title: { type: 'string', minLength: 1, maxLength: 255 },
        description: { type: 'string', minLength: 0, maxLength: 8000 },
        price: { type: 'number' },
        publisher: { type: 'string', minLength: 1, maxLength: 255 },
        pubdate: { type: 'string', minLength: 1, maxLength: 255 },
        edition: { type: 'string', minLength: 1, maxLength: 255 },
        pages: { type: 'string', minLength: 1, maxLength: 255 }
      }
    };
  }

  static get relationMappings() {
    return {
      authors: {
        relation: Model.ManyToManyRelation,
        modelClass: Author,
        join: {
          from: 'bookdescriptions.ISBN',
          through: {
            from: 'bookauthorsbooks.ISBN',
            to: 'bookauthorsbooks.AuthorID'
          },
          to: 'bookauthors.AuthorID'
        }
      },

      categories: {
        relation: Model.ManyToManyRelation,
        modelClass: Category,
        join: {
          from: 'bookdescriptions.ISBN',
          through: {
            from: 'bookcategoriesbooks.ISBN',
            to: 'bookcategoriesbooks.CategoryID'
          },
          to: 'bookcategories.CategoryID'
        }
      }
    };
  }
}

module.exports = Book;
