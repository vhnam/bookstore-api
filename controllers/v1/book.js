const bookService = require('../../services/BookService');
const HttpStatus = require('../../utils/HttpStatus');
const DateFormatter = require('../../utils/DateFormatter');

module.exports = {
  index: async (req, res) => {
    try {
      const { page, limit, title } = req.query;
      const books = await bookService.index(page, limit, title);
      res.status(HttpStatus.Ok).send(books);
    } catch (err) {
      throw err;
    }
  },

  show: async (req, res) => {
    try {
      const { id } = req.params;
      const book = await bookService.show(id);
      res.status(HttpStatus.Ok).send(book);
    } catch (err) {
      throw err;
    }
  },

  create: async (req, res) => {
    try {
      const { pubdate, ...params } = req.body;
      const newPubDate = DateFormatter.toString(pubdate);
      const book = await bookService.create({ pubdate: newPubDate, ...params });
      res.status(HttpStatus.Created).send({ ISBN: book.ISBN });
    } catch (err) {
      throw err;
    }
  }
};
