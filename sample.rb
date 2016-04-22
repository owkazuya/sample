#require 'csv'
#CSV.foreach("Tokushima Free Wi-Fiスポットテストデータ.csv", { encoding: "Shift_JIS:UTF-8", :col_sep => "\t", :quote_char => '"' }) do |row|
#    p row
#end

class Address
 def initialize
  buf = Array.new #バッファするための配列を宣言
  open("Tokushima Free Wi-Fiスポットテストデータ.csv","r", { encoding: "Shift_JIS:UTF-8", :col_sep => "\t", :quote_char => '"' }) do |file|
    file.each_line do |s|
    buf << s.chomp #改行文字\nを取り除きつつbufに値を格納
    @s = buf #できあがった配列をインスタンス変数に格納
    end
  end
end

def sort #降順に並べ替える
    @s.sort! do |one,another|
    one = one.split(',')
    another = another.split(',')
    one[2] <=> another[2]
    p one
    p another
    end
 end
end

address = Address.new
address.sort
