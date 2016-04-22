require 'csv'
CSV.foreach("Tokushima Free Wi-Fiスポットテストデータ.csv", { encoding: "Shift_JIS:UTF-8", :col_sep => "\t", :quote_char => '"' }) do |row|
    p row
end
