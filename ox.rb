puts "〇✖ゲーム\n\n"

puts "＜ルール説明＞"
puts "・1～9の数字で表した3×3のマスを使用"
puts "・先攻はoを、後攻はxを印していく"
puts "・先攻と後攻は交互に入れ替わる"
puts "・対応したマスの数字を入力すると、oかxに置き換わる"
puts "・縦・横・斜めのいずれかで、３つ連続で印せた方の勝ち\n\n"

#3×3のマスを、1～9の数字に置き換えて表示
area = "1 2 3 \n4 5 6 \n7 8 9 \n"

#timesメソッドを使って、これ以下の処理を9回繰り返す
#変数elementに、処理の回数（要素0～8）を代入
9.times do |element|
    puts area


    #先行（o）と後攻（x）を、交互に処理させたい
    #要素（0～8）を2で割った余りを使って、先攻後攻の判断を行う
    #変数oxに、変数elementを2で割った剰余を代入
    #変数oxが、0の時 => 先行（o）
    #変数oxが、0以外の数値の時 => 後攻（x）　として判断する
    ox = element % 2

    #if文を使って、条件分岐
    #変数ox == 0 の時に、変数first_afterに"o"を代入
    #それ以外の時に、変数first_afterに"x"を代入
    if ox == 0
        first_after = "o"
    else
        first_after = "x"
    end

    puts "次は#{first_after}の番です。どこを選択する？（1～9の数字を入力してください）>>"
    
    #getsメソッドを使い、キーボード入力した文字列を、変数choiceに代入
    choice = gets.strip
    #gsub!メソッドを使い、変数choiceに代入された文字列と同じ文字列を持つ、変数areaの文字列を、変数first_afterに置き換える
    area.gsub!(/#{choice}/, first_after)

end