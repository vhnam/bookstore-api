require('dotenv').config();

module.exports = {
  development: {
    client: 'mysql',
    connection: {
      database: process.env.DEVELOP_DB_DATABASE,
      user: process.env.DEVELOP_DB_USER,
      password: process.env.DEVELOP_DB_PASSWORD
    }
  },

  staging: {
    client: 'mysql',
    connection: {
      database: process.env.STAGING_DB_DATABASE,
      user: process.env.STAGING_DB_USER,
      password: process.env.STAGING_DB_PASSWORD
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },

  production: {
    client: 'mysql',
    connection: {
      database: process.env.PRODUCTION_DB_DATABASE,
      user: process.env.PRODUCTION_DB_USER,
      password: process.env.PRODUCTION_DB_PASSWORD
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }
};
