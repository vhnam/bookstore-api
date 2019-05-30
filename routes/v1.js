const express = require('express');
const router = express.Router();

const bookValidator = require('../validators/book');
const bookController = require('../controllers/v1/book');

router.get('/books', bookValidator.index, bookController.index);
router.get('/books/:id', bookValidator.show, bookController.show);
router.post('/books', bookValidator.create, bookController.create);

module.exports = router;
