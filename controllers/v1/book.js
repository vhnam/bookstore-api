const bookService = require('../../services/BookService');

module.exports = {
  list: async (req, res) => {
    try {
      const page = parseInt(req.query.page);
      const limit = parseInt(req.query.limit);

      const books = await bookService.list(page, limit);
      res.status(200).json(books);
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
  }
};
