require "simplecov-lcov"
require "undercover"
require "simplecov_json_formatter"

SimpleCov::Formatter::LcovFormatter.config.report_with_single_file = true

SimpleCov.start do
  add_filter "/spec/"
  add_filter "/features/"

  formatter(
    SimpleCov::Formatter::MultiFormatter.new(
      [
        SimpleCov::Formatter::HTMLFormatter,
        SimpleCov::Formatter::JSONFormatter,
        SimpleCov::Formatter::LcovFormatter
      ]
    )
  )
end
