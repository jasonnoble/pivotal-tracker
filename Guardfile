# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec' do
  watch(%r{^spec/(.+)_spec\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }

  callback(:start_begin) do
    puts "Removing vcr_cassettes..."
    `rm spec/vcr_cassettes/*`
  end
  callback(:run_on_changes_begin) do
    puts "Removing vcr_cassettes..."
    `rm spec/vcr_cassettes/*`
  end
  callback(:run_on_additions_begin) do
    puts "Removing vcr_cassettes..."
    `rm spec/vcr_cassettes/*`
  end
  callback(:run_on_modifications_begin) do
    puts "Removing vcr_cassettes..."
    `rm spec/vcr_cassettes/*`
  end
  callback(:run_on_removals_begin) do
    puts "Removing vcr_cassettes..."
    `rm spec/vcr_cassettes/*`
  end
  callback(:run_all_begin) do
    puts "Removing vcr_cassettes..."
    `rm spec/vcr_cassettes/*`
  end
  callback(:reload_begin) do
    puts "Removing vcr_cassettes..."
    `rm spec/vcr_cassettes/*`
  end
end

