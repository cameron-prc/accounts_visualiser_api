# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

start_date = Date.today - 1.month
end_date = Date.today
count = 0

(start_date..end_date).each do |date|

  (0..4).each do

    amount = rand(10000) * rand

    Transaction.new({ amount: amount.round(2), details: "Details_#{count}", date: date, transaction_type: "Transaction type" }).save!

    count += 1

  end

end