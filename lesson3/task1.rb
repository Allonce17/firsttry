#Сделать хеш, содержащий месяцы и количество дней в месяце.
# В цикле выводить те месяцы, у которых количество дней ровно 30
months =
  {
    "january" => 31,
    "february" => 29,
    "march" => 31,
    "april" => 30,
    "may" => 30,
    "june" => 30,
    "july" => 31,
    "august" => 31,
    "september" => 30,
    "october" => 31,
    "november" => 30,
    "december" => 31,
}
months.count { |days,months|puts k if v ==30  }
