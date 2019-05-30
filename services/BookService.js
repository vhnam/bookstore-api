const { transaction } = require('objection');

const Book = require('../models/book');

module.exports = {
  index: async (page, limit, title) => {
    let books;

    if (title) {
      books = await Book.query()
        .where('title', 'LIKE', `%${title}%`)
        .page(page - 1, limit);
    } else {
      books = await Book.query().page(page - 1, limit);
    }

    return {
      data: books,
      total: books.total
    };
  },

  show: async id => {
    const book = await Book.query().where('ISBN', id);

    return book;
  },

  create: async book => {
    await transaction(Book, async (Book, trx) => {
      const newBook = await Book.query(trx).insert(book);
      return { newBook };
    });
  }
};
