const dotenv = require('dotenv').config();

if (dotenv.error) {
  throw dotenv.error;
}

const express = require('express');
const cors = require('cors');
const morgan = require('morgan');
const bodyParser = require('body-parser');
const errorHandler = require('errorhandler');
const logger = require('winston');
const helmet = require('helmet');
const Knex = require('knex');
const { Model } = require('objection');
const HttpStatus = require('./utils/HttpStatus');

const knexConfig = require('./knexfile');
const knex = Knex(knexConfig[process.env.NODE_ENV || 'development']);
Model.knex(knex);

const apiVersion = process.env.API_VERSION;
const router = require(`./routes/${apiVersion}`);

logger.add(new logger.transports.File({ filename: 'combined.log' }));

if (process.env.NODE_ENV === 'development') {
  logger.add(new logger.transports.Console());
}

const app = express();
app.disable('x-powered-by');

app.use(cors());
app.use(helmet());
app.use(morgan('combined'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// config API version
app.use(`/api/${apiVersion}`, router);

// catch 404 and forward to error handler
app.use((req, res, next) => {
  const err = new Error('Not Found');
  err.status = HttpStatus.NotFound;
  next(err);
});

// error handler
app.use(errorHandler());
app.set('port', process.env.API_PORT || 3000);
app.listen(app.get('port'), () => {
  logger.info(`Express server listening on port ${app.get('port')}`);
});

module.exports = app;
