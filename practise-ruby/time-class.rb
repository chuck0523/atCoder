# Timeクラス
t1 = Time.new
puts t1 # 2016-04-16 20:35:08 +0900

t2 = Time.now
puts t2 # 2016-04-16 20:35:08 +0900


# 年月日などの時刻要素を取得
t = Time.now
puts ("#{t.year}年 #{t.month}月 #{t.day}日") # 2016年 4月 16日
puts ("#{t.hour}時 #{t.min}分 #{t.sec}秒") # 20時 38分 19秒
puts ("TimeZone: #{t.zone}") #TimeZone: JST
puts ("今年の元旦から数えて#{t.yday}日目") # 今年の元旦から数えて107日目


# 指定フォーマットで文字列に変換する
t = Time.now
strTime = t.strftime("現在時刻 %H時 %M分 %S秒")
puts strTime # 現在時刻 20時 41分 37秒

strDay = t.strftime("現在日時 %B,%d(%A) %Y %Z")
puts strDay # 現在日時 April,16(Saturday) 2016 JST


# 時刻要素を配列として取得する
t = Time.now
ary = t.to_a

jikokuyouso = %w[秒 分 時 日 月 年 曜日 年内通算日 夏時間 タイムゾーン]

ary.each_with_index do |youso, index|
  puts ("#{jikokuyouso[index]} : #{youso}")
end
# 秒 : 56
# 分 : 43
# 時 : 20
# 日 : 16
# 月 : 4
# 年 : 2016
# 曜日 : 6
# 年内通算日 : 107
# 夏時間 : false
# タイムゾーン : JST


# 起算時からの経過秒数を取得する
newTime = Time.at(30000)
puts newTime # 1970-01-01 17:20:00 +0900
puts newTime.utc.strftime("%H:%M:%S") # 08:20:00

# 時刻の加減算
t1 = Time.now
t2 = t1 + 10
puts("1番目の時刻:#{t1}") # 1番目の時刻:2016-04-16 20:47:56 +0900
puts("2番目の時刻:#{t2}") # 2番目の時刻:2016-04-16 20:48:06 +0900

sabun = t2 - t1
puts("2つの時刻の差は:#{sabun}です") # 2つの時刻の差は:10.0です
