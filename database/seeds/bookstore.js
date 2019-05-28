const fs = require('fs');
const path = require('path');

const FILE_PATH = path.join(__dirname, 'bookstore.sql');

exports.seed = knex => {
  var sql = fs.readFileSync(FILE_PATH).toString();
  return knex.raw(sql);
};
