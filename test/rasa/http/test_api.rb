# frozen_string_literal: true

require "test_helper"

class Rasa::HTTP::TestApi < Minitest::Test
  def test_it_has_a_version_number
    refute_nil Rasa::HTTP::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
