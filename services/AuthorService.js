const { transaction } = require('objection');

const Author = require('../models/author');

module.exports = {
  index: async (page, limit, name) => {
    let authors;

    if (name) {
      authors = await Author.query()
        .where('nameF', 'LIKE', `%${name}%`)
        .where('nameL', 'LIKE', `%${name}%`)
        .page(page - 1, limit);
    } else {
      authors = await Author.query().page(page - 1, limit);
    }

    return {
      data: authors
    };
  },

  show: async id => {
    const author = await Author.query().where('AuthorID', id);

    return author;
  },

  create: async author => {
    await transaction(Author, async (Author, trx) => {
      const newauthor = await Author.query(trx).insert(author);
      return { newauthor };
    });
  }
};
