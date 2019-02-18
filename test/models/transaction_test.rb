require 'test_helper'

class TransactionTest < ActiveSupport::TestCase

  test "Transaction must have an amount" do

    transaction = Transaction.new({ amount: nil, details: "Details", date: Date.new, transaction_type: "Type" })

    assert_raise(ActiveRecord::RecordInvalid) { transaction.save! }

  end

  test "Transaction must have details" do

    transaction = Transaction.new({ amount: 0.00, details: nil, date: Date.new, transaction_type: "Type" })

    assert_raise(ActiveRecord::RecordInvalid) { transaction.save! }

  end

  test "Transaction must have a date" do

    transaction = Transaction.new({ amount: 0.00, details: "Details", date: nil, transaction_type: "Type" })

    assert_raise(ActiveRecord::RecordInvalid) { transaction.save! }

  end

  test "Transaction must have a type" do

    transaction = Transaction.new({ amount: 0.00, details: "Details", date: Date.new, transaction_type: nil })

    assert_raise(ActiveRecord::RecordInvalid) { transaction.save! }

  end

  test "Details cannot be blank" do

    transaction = Transaction.new({ amount: 0.00, details: "", date: Date.new, transaction_type: "Type" })

    assert_raise(ActiveRecord::RecordInvalid) { transaction.save! }

  end

  test "Type cannot be blank" do

    transaction = Transaction.new({ amount: 0.00, details: "Details", date: Date.new, transaction_type: "" })

    assert_raise(ActiveRecord::RecordInvalid) { transaction.save! }

  end

  test "Valid transaction will save" do

    transaction = Transaction.new({ amount: 0.00, details: "Details", date: Date.new, transaction_type: "Type" })

    assert_nothing_raised do

      transaction.save!

    end

  end

  test "Transaction can have metadata" do

    transaction = Transaction.new({ amount: 0.00, details: "Details", date: Date.new, transaction_type: "Type" })

    transaction.transaction_metadata.build( field: 'Field', value: 'Value')
    transaction.transaction_metadata.build( field: 'Field', value: 'Value')
    transaction.transaction_metadata.build( field: 'Field', value: 'Value')

    assert_nothing_raised do

      transaction.save!

    end

    assert_equal transaction.transaction_metadata.length, 3

  end

end
