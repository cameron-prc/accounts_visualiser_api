require 'test_helper'

class FilterTest < ActiveSupport::TestCase


  setup do
    @category = Category.new({ name: "Name" })
  end

  test "Filter must have a field" do

    filter = Filter.new({ field: nil, value: "Value" })

    filter.category = @category

    assert_raise(ActiveRecord::RecordInvalid) { filter.save! }

  end

  test "Filter field cannot be blank" do

    filter = Filter.new({ field: "", value: "Value" })

    filter.category = @category

    assert_raise(ActiveRecord::RecordInvalid) { filter.save! }

  end

  test "Filter metadata must have a value" do

    filter = Filter.new({ field: nil, value: "Value" })

    filter.category = @category

    assert_raise(ActiveRecord::RecordInvalid) { filter.save! }

  end

  test "Filter metadata value cannot be blank" do

    filter = Filter.new({ field: "", value: "Value" })

    filter.category = @category

    assert_raise(ActiveRecord::RecordInvalid) { filter.save! }

  end

  test "Transaction metadata must have a transaction" do

    filter = Filter.new({ field: "Field", value: "Value" })

    assert_raise(ActiveRecord::RecordInvalid) { filter.save! }

  end

  test "valid record will save" do

    filter = Filter.new({ field: "Field", value: "Value" })

    filter.category = @category

    assert_nothing_raised do

      filter.save!

    end

  end


end
