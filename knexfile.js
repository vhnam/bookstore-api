require('dotenv').config();

const path = require('path');
const BASE_PATH = path.join(__dirname, 'database');

module.exports = {
  development: {
    client: 'mysql2',
    connection: {
      database: process.env.DEVELOP_DB_DATABASE,
      user: process.env.DEVELOP_DB_USERNAME,
      password: process.env.DEVELOP_DB_PASSWORD,
      multipleStatements: true
    },
    migrations: {
      directory: path.join(BASE_PATH, 'migrations')
    },
    seeds: {
      directory: path.join(BASE_PATH, 'seeds')
    }
  },

  staging: {
    client: 'mysql2',
    connection: {
      database: process.env.STAGING_DB_DATABASE,
      user: process.env.STAGING_DB_USER,
      password: process.env.STAGING_DB_PASSWORD,
      multipleStatements: true
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      directory: path.join(BASE_PATH, 'migrations')
    },
    seeds: {
      directory: path.join(BASE_PATH, 'seeds')
    }
  },

  production: {
    client: 'mysql2',
    connection: {
      database: process.env.PRODUCTION_DB_DATABASE,
      user: process.env.PRODUCTION_DB_USER,
      password: process.env.PRODUCTION_DB_PASSWORD,
      multipleStatements: true
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      directory: path.join(BASE_PATH, 'migrations')
    },
    seeds: {
      directory: path.join(BASE_PATH, 'seeds')
    }
  }
};
