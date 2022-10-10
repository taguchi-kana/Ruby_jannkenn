def winner
    puts "★勝利★"
    puts "あっち向いて〜（指を差す方向を決める）"
    puts "0(上) 　 1(下) 　 2(左) 　 3(右)"
    battle_2nd = ["上","下","左","右"]
    battle_case_2nd =battle_2nd[gets.to_i]
    puts "ホイ！"
    puts "------------------------------------"
    opponent_2nd =battle_2nd[rand(battle_2nd.size)]
    puts "あなた：#{battle_case_2nd}を差しました"
    puts "相手：#{opponent_2nd}を向きました"
     if battle_case_2nd == opponent_2nd
         puts "あなたの勝ちです"
         puts "------------------------------------"
     else
         puts "あなたの負けです"
         puts "------------------------------------"
     end
end

def loser
    puts "★負け★"
    puts "あっち向いて〜（向く方向を決める）"
    puts "0(上) 　 1(下) 　 2(左) 　 3(右)"
    battle_2nd = ["上","下","左","右"]
    battle_case_2nd =battle_2nd[gets.to_i]
    puts "ホイ！"
    puts "------------------------------------"
    opponent_2nd =battle_2nd[rand(battle_2nd.size)]
    puts "あなた：#{battle_case_2nd}を向きました"
    puts "相手：#{opponent_2nd}を差しましたしました"
     if battle_case_2nd == opponent_2nd
         puts "あなたの負けです"
         puts "------------------------------------"
     else
         puts "あなたの勝ちです"
         puts "------------------------------------"
     end
end

puts "じゃんけん・・・・・"
puts "0(グー)  1(チョキ)  2(パー)  3(戦わない)"
battle_me = ["グー","チョキ","パー","お疲れ様でした"]
battle_you= ["グー","チョキ","パー"]
battle_case =battle_me[gets.to_i]

while battle_me.index(battle_case) < 3
    puts "ホイ！"
    puts "------------------------------------"
    opponent =battle_you[rand(battle_you.size)]
    puts "あなた：#{battle_case}を出しました"
    puts "相手：#{opponent}を出しました"
    puts "------------------------------------"
     if battle_case == opponent
         puts "★引き分け★"
         puts "あいこで・・・・・"
         puts "0(グー)  1(チョキ)  2(パー)  3(戦わない)"
         battle_case = battle_me[gets.to_i]
         puts "ショ！"
         puts "------------------------------------"
         next
     elsif (battle_me.index(battle_case) ==0 && battle_you.index(opponent)==1)||(battle_me.index(battle_case) ==1 && battle_you.index(opponent)==2)||(battle_me.index(battle_case) ==2 && battle_you.index(opponent)==0)
         winner
     else
         loser
     end
    puts "じゃんけん・・・・・"
    puts "0(グー)  1(チョキ)  2(パー)  3(戦わない)"
    battle_case =battle_me[gets.to_i]
end

puts "#{battle_case}"