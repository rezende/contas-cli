# frozen_string_literal: true

require 'csv'

accounts = {}
accounts_file = ARGV[0] || 'contas.csv'
transfers_file = ARGV[1] || 'transacoes.csv'
fine = 300

# populate initial amount
begin
  CSV.foreach(accounts_file, converters: :integer) do |row|
    accounts[row[0]] = row[1]
  end
rescue StandardError
  p "Arquivo de contas #{accounts_file} nao existe"
  exit
end

begin
  CSV.foreach(transfers_file, converters: :integer) do |row|
    account = row[0]
    amount = row[1]
    accounts[account] += amount
    accounts[account] -= fine if accounts[account].negative?
  end
rescue StandardError
  p "Arquivo de transferencias #{transfers_file} nao existe"
  exit
end

accounts.each do |account|
  p "#{account[0]},#{account[1]}"
end
