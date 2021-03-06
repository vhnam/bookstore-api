const { Model } = require('objection');

class Author extends Model {
  static tableName() {
    return 'bookauthors';
  }

  static idColumn() {
    return 'AuthorID';
  }

  static get jsonSchema() {
    return {
      type: 'object',
      required: ['nameF', 'nameL'],

      properties: {
        AuthorID: { type: 'integer' },
        nameF: { type: 'string', minLength: 1, maxLength: 255 },
        nameL: { type: 'string', minLength: 1, maxLength: 255 }
      }
    };
  }

  static relationMappings = {
    books: {
      relation: Model.ManyToManyRelation,
      modelClass: 'Book',
      join: {
        from: 'booksauthors.AuthorID',
        through: {
          from: 'bookauthorsbooks.AuthorID',
          to: 'bookauthorsbooks.ISBN'
        },
        to: 'bookdescriptions.ISBN'
      }
    }
  };
}

module.exports = Author;
