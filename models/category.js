const { Model } = require('objection');

class Category extends Model {
  static get tableName() {
    return 'bookcategories';
  }

  static get idColumn() {
    return 'CategoryID';
  }

  static get jsonSchema() {
    return {
      type: 'object',
      required: ['CategoryName'],

      properties: {
        CategoryID: { type: 'integer' },
        CategoryName: { type: 'string', minLength: 1, maxLength: 255 }
      }
    };
  }

  static relationMappings = {
    books: {
      relation: Model.ManyToManyRelation,
      modelClass: 'Book',
      join: {
        from: 'bookcategories.CategoryID',
        through: {
          from: 'bookcategoriesbooks.CategoryID',
          to: 'bookcategoriesbooks.ISBN'
        },
        to: 'bookdescriptions.ISBN'
      }
    }
  };
}

module.exports = Category;
