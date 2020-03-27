# frozen_string_literal: true

logs = File.readlines('logs/logs_ts1.txt')

def error_message(logs)
  logs.select { |keyword| keyword.downcase =~ /error/ }
end

puts error_message(logs)
