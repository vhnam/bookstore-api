const monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

module.exports = {
  toString: date => {
    const newDate = new Date(date);
    return `${
      monthNames[newDate.getMonth()]
    } ${newDate.getDate()}, ${newDate.getFullYear()}`;
  }
};
