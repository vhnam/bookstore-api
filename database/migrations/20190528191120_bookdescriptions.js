exports.up = function(knex, Promise) {
  return Promise.all([
    knex.schema.createTable('bookdescriptions', table => {
      table.string('ISBN').primary();
      table.string('title').notNullable();
      table.text('description').notNullable();
      table.decimal('price', 4, 2).notNullable();
      table.string('publisher').notNullable();
      table.string('pubdate').notNullable();
      table.string('edition').notNullable();
      table.string('pages').notNullable();
    })
  ]);
};

exports.down = function(knex, Promise) {
  return Promise.all([knex.schema.dropTable('bookdescriptions')]);
};
