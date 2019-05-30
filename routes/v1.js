const express = require('express');
const router = express.Router();

const authorValidator = require('../validators/author');
const bookValidator = require('../validators/book');

const authorController = require('../controllers/v1/author');
const bookController = require('../controllers/v1/book');

router.get('/authors', authorValidator.index, authorController.index);
router.get('/authors/:id', authorValidator.show, authorController.show);
router.post('/authors', authorValidator.create, authorController.create);

router.get('/books', bookValidator.index, bookController.index);
router.get('/books/:id', bookValidator.show, bookController.show);
router.post('/books', bookValidator.create, bookController.create);

module.exports = router;
