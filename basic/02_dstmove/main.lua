--[[
    動きのある画像配置サンプル
]]

local header = {
	type = 5,			        -- 0:7k, 1:5k, 2:14k, 3:10k, 4:9k, 5:select, 6:decide, 7:result, 15:courceresult, 16:24k, 17:24kDouble
	name = "02_dstmove",   		-- スキンの名前
	w = 1920,                   -- スキンの横幅
	h = 1080,                   -- スキンの高さ
	input = 500,
	fadeout = 500,
	property = {},
	filepath = {},
	offset = {}
}

local function main()
	-- ヘッダ情報のコピー
	local skin = {}
	for k, v in pairs(header) do
		skin[k] = v
    end
	-- ここにスキンを記述していく
	-- 画像ファイルの登録
    skin.source = {
		{id = 1, path = "img/image01.png"},
	}
	-- 画像の切り出し
	skin.image = {
		{id = "orange", src = 1, x = 0, y = 0, w = 300, h = 300},
		{id = "blue", src = 1, x = 0, y = 700, w = 300, h = 300},
		{id = "purple", src = 1, x = 700, y = 0, w = 300, h = 300},
	}
	-- 画像を配置する
	skin.destination = {
		-- 5秒（5000ミリ秒）かけてx軸を0から1620に変化する
		-- 画像は繰り返し移動する
		{id = "orange", dst = {
			{time = 0, x = 0, y = 0, w = 300, h = 300},
			{time = 5000, x = 1620}
		}},
		-- loopの値を最終時間に合わせることで繰り返しを止められる
		{id = "blue", loop = 5000, dst = {
			{time = 0, x = 0, y = 400, w = 300, h = 300},
			{time = 5000, x = 1620}
		}},
		-- loopを-1とすると一度アニメーションが実行された後消える
		{id = "purple", loop = -1, dst = {
			{time = 0, x = 0, y = 800, w = 300, h = 300},
			{time = 5000, x = 1620}
		}}
	}
	return skin
end

return{
	header = header,
	main = main
}