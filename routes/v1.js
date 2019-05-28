const express = require('express');
const router = express.Router();

const bookValidator = require('../validators/book');
const bookController = require('../controllers/v1/book');

router.get('/books', bookValidator.list, bookController.list);

module.exports = router;
