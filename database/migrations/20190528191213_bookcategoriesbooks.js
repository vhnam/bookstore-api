exports.up = function(knex, Promise) {
  return Promise.all([
    knex.schema.createTable('bookcategoriesbooks', table => {
      table.integer('CategoryID');
      table.string('ISBN');
      table.primary(['CategoryID', 'ISBN']);
    })
  ]);
};

exports.down = function(knex, Promise) {
  return Promise.all([knex.schema.dropTable('bookcategoriesbooks')]);
};
