exports.up = function(knex, Promise) {
  return Promise.all([
    knex.schema.createTable('bookauthorsbooks', table => {
      table.string('ISBN');
      table.string('AuthorID');
      table.primary(['ISBN', 'AuthorID']);
    })
  ]);
};

exports.down = function(knex, Promise) {
  return Promise.all([knex.schema.dropTable('bookauthorsbooks')]);
};
