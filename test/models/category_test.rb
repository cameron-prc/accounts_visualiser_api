require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "Category must have a name" do

    category = Category.new({ name: nil })

    assert_raise(ActiveRecord::RecordInvalid) { category.save! }

  end

  test "Category name cannot be blank" do

    category = Category.new({ name: "" })

    assert_raise(ActiveRecord::RecordInvalid) { category.save! }

  end

  test "valid record will save" do

    category = Category.new({ name: "Name" })

    assert_nothing_raised do

      category.save!

    end

  end

end
