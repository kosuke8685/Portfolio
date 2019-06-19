#sinatraフレームワークを使って、webアプリを構築
#require "sinatra/reloader"を使ってwebアプリのオートリロード
#require "erb"を使って、HTMLにRubyコードを埋め込む準備
require "sinatra"
require "sinatra/reloader"
require "erb"

#自己紹介トップページ、各メニューを表示
get "/" do
    erb :index
end

#生年月日
get "/date_of_birth" do
    @date_of_birth = "生年月日"
    @message = "1988年6月5日"
    erb :date_of_birth
end

#趣味
get "/hobby" do
    @hobby = "趣味"
    @message = "料理、スキー、スノーボード"
    erb :hobby
end

#出身地
get "/birthplace" do
    @birthplace = "出身地"
    @message = "奈良県宇陀市"
    erb :birthplace
end


#HTMLテンプレートを使用
#Rubyコードを埋め込み
__END__
@@index
<!DOCTYPE html>
<html lang="ja">
    <head>
        <mata charset="utf-8">
        <title>jikoshoukai</title>
        <style>body {padding: 30px;}</style>
    </head>
    <body>
        <h1>鈴木孝典の自己紹介</h1>
        <p>このページでは、私の自己紹介をします。</p>
        <p><a href="/date_of_birth">生年月日</a></p>
        <p><a href="hobby">趣味</a></p>
        <p><a href="/birthplace">出身地</a></p>
    </body>
</html>


<!--生年月日のページ詳細-->
@@date_of_birth
<!DOCTYPE html>
<html lang="ja">
    <head>
        <mata charset="utf-8">
        <title>date_of_birth</title>
        <style>body {padding: 30px;}</style>
    </head>
    <body>
        <!--Rubyコードの埋め込み-->
        <h1><%= @date_of_birth %></h1>
        <p><%= @message %></p>
        <!--トップページへのリンク-->
        <p><a href="/">メニューに戻る</a></p>
    </body>
</html>


<!--趣味のページ詳細-->
@@hobby
<!DOCTYPE html>
<html lang="ja">
    <head>
        <mata charset="utf-8">
        <title>date_of_birth</title>
        <style>body {padding: 30px;}</style>
    </head>
    <body>
        <!--Rubyコードの埋め込み-->
        <h1><%= @hobby %></h1>
        <p><%= @message %></p>
        <p><br></p>
        <p>大学卒業後、就職を機に独り暮らしを始めました。その頃から、土日のどちらかは自炊しています。</p>
        <p>食べる事ももちろん好きですが、料理する過程自体を楽しんでいます。</p>
        <p>得意料理は、唐揚げとだし巻き卵です。</p>
        <p><br></p>
        <p>また、3歳から父親の影響でスキーを始めました。</p>
        <p>高校からは競技スキー（種目はアルペン）部に所属していました。</p>
        <p>最近は専ら、スノーボード専門になってしまいました。</p>
        <!--トップページへのリンク-->
        <p><a href="/">メニューに戻る</a></p>
    </body>
</html>


<!--出身地のページ詳細-->
@@birthplace
<!DOCTYPE html>
<html lang="ja">
    <head>
        <mata charset="utf-8">
        <title>date_of_birth</title>
        <style>body {padding: 30px;}</style>
    </head>
    <body>
        <!--Rubyコードの埋め込み-->
        <h1><%= @birthplace %></h1>
        <p><%= @message %></p>
        <p><br></p>
        <p>生まれてから就職するまでの約22年間を、地元で過ごしました。</p>
        <p>奈良県の北東部に位置し、すぐ隣は三重県という立地です。</p>
        <p>四方を山に囲まれた田舎で、イタチや鹿などの野生動物も良く見かけました。</p>
        <!--トップページへのリンク-->
        <p><a href="/">メニューに戻る</a></p>
    </body>
</html>