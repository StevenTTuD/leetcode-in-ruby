require 'pry'
question_files = File.join("questions","**","*.rb")
question_files_2 = File.join("questions","**","**","*.rb")
Dir.glob(question_files).each { |f| require_relative  File.join("..",f) }
Dir.glob(question_files_2).each { |f| require_relative  File.join("..",f) }
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
