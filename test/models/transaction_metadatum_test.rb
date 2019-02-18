require 'test_helper'

class TransactionMetadatumTest < ActiveSupport::TestCase

  setup do
    @transaction = Transaction.new({ amount: 0.00, details: "Details", date: Date.new, transaction_type: "Type" })
  end

  test "Transaction must have a field" do

    transaction_metadatum = TransactionMetadatum.new({ field: nil, value: "Details" })

    transaction_metadatum.transaction_object = @transaction

    assert_nothing_raised do

      transaction_metadatum.save!

    end

  end

  test "Transaction field cannot be blank" do

    transaction_metadatum = TransactionMetadatum.new({ field: "", value: "Details" })

    transaction_metadatum.transaction_object = @transaction

    assert_raise(ActiveRecord::RecordInvalid) { transaction_metadatum.save! }

  end

  test "Transaction metadata must have a value" do

    transaction_metadatum = TransactionMetadatum.new({ field: nil, value: "Details" })

    transaction_metadatum.transaction_object = @transaction

    assert_nothing_raised do

      transaction_metadatum.save!

    end

  end

  test "Transaction metadata value cannot be blank" do

    transaction_metadatum = TransactionMetadatum.new({ field: "", value: "Details" })

    transaction_metadatum.transaction_object = @transaction

    assert_raise(ActiveRecord::RecordInvalid) { transaction_metadatum.save! }

  end

  test "Transaction metadata must have a transaction" do

    transaction_metadatum = TransactionMetadatum.new({ field: "", value: "Details" })

    assert_raise(ActiveRecord::RecordInvalid) { transaction_metadatum.save! }

  end

end
