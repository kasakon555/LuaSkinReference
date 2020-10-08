--[[
	点滅する画像サンプル
	目に悪いので注意！
]]

local header = {
	type = 5,			        -- 0:7k, 1:5k, 2:14k, 3:10k, 4:9k, 5:select, 6:decide, 7:result, 15:courceresult, 16:24k, 17:24kDouble
	name = "04_imageBlink",   		-- スキンの名前
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
		-- 横に並んだ300x300の画像3つを100ミリ秒で一周する
		{id = "obp", src = 1, x = 0, y = 0, w = 900, h = 300, divx = 3, cycle = 100},
		-- 縦に並んだ300x300の画像3つを200ミリ秒で一周する
		{id = "oyg", src = 1, x = 0, y = 0, w = 300, h = 900, divy = 3, cycle = 200},
	}
	-- 画像を配置する
	skin.destination = {
		-- 普通に配置
		{id = "obp", dst = {
			{x = 0, y = 0, w = 300, h = 300}
		}},
		-- 普通に配置
		{id = "oyg", dst = {
			{x = 0, y = 400, w = 300, h = 300}
		}},
		-- 更にエフェクトを掛けることも可能
		{id = "obp", dst = {
			{time = 0, x = 0, y = 800, w = 300, h = 300},
			{time = 5000, x = 1620, a = 0, angle = 360}
		}}
	}
	return skin
end

return{
	header = header,
	main = main
}