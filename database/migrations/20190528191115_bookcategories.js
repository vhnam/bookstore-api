exports.up = function(knex, Promise) {
  return Promise.all([
    knex.schema.createTable('bookcategories', table => {
      table.increments('CategoryID').primary();
      table.string('CategoryName').notNullable();
    })
  ]);
};

exports.down = function(knex, Promise) {
  return Promise.all([knex.schema.dropTable('bookcategories')]);
};
