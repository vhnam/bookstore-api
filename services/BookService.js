const Book = require('../models/book');

module.exports = {
  list: async (page, limit) => {
    const total = await Book.query().length;
    const books = await Book.query().page(page, limit);

    return {
      data: books,
      total
    };
  }
};
