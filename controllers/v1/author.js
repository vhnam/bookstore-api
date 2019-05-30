const authorService = require('../../services/AuthorService');
const HttpStatus = require('../../utils/HttpStatus');
const DateFormatter = require('../../utils/DateFormatter');

module.exports = {
  index: async (req, res) => {
    try {
      const { page, limit, name } = req.query;
      const authors = await authorService.index(page, limit, name);
      res.status(HttpStatus.Ok).send(authors);
    } catch (err) {
      throw err;
    }
  },

  show: async (req, res) => {
    try {
      const { id } = req.params;
      const author = await authorService.show(id);
      res.status(HttpStatus.Ok).send(author);
    } catch (err) {
      throw err;
    }
  },

  create: async (req, res) => {
    try {
      const { ...params } = req.body;
      const author = await authorService.create({
        ...params
      });
      res.status(HttpStatus.Created).send({ AuthorID: author.AuthorID });
    } catch (err) {
      throw err;
    }
  }
};
