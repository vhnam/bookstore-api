const {
  validationResult,
  body,
  param,
  query
} = require('express-validator/check');

const validate = (req, res, next) => {
  const errors = validationResult(req);

  if (!errors.isEmpty()) {
    res.status(400).json('Invalid parameters');
  } else {
    next();
  }
};

module.exports = {
  index: [
    [
      query('page')
        .exists()
        .isInt(),
      query('limit')
        .exists()
        .isInt()
    ],
    validate
  ],

  show: [[param('id').isString()], validate],

  create: [
    [
      body('ISBN').isString(),
      body('title').isString(),
      body('description').isString(),
      body('price').isString(),
      body('publisher').isString(),
      body('pubdate').isNumeric(),
      body('edition').isString(),
      body('pages').isString()
    ],
    validate
  ]
};
