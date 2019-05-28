exports.up = function(knex, Promise) {
  return Promise.all([
    knex.schema.createTable('bookauthors', table => {
      table.increments('AuthorID').primary();
      table.string('nameF').notNullable();
      table.string('nameL').notNullable();
    })
  ]);
};

exports.down = function(knex, Promise) {
  return Promise.all([knex.schema.dropTable('bookauthors')]);
};
