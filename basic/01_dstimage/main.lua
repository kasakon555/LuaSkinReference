--[[
    画像配置サンプル
]]

local header = {
	type = 5,			        -- 0:7k, 1:5k, 2:14k, 3:10k, 4:9k, 5:select, 6:decide, 7:result, 15:courceresult, 16:24k, 17:24kDouble
	name = "01_dstimage",   -- スキンの名前
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
		-- img/image01.pngを1というIDで登録
		{id = 1, path = "img/image01.png"},
		-- idには文字列も可能
		{id = "sample", path = "img/image01.png"},
	}
	-- 画像の切り出し
	skin.image = {
		-- orangeという名前でidが1の画像のx,y軸が0，0の地点から横300px,縦300pxを切り出す
		{id = "orange", src = 1, x = 0, y = 0, w = 300, h = 300},
		{id = "blue", src = "sample", x = 0, y = 700, w = 300, h = 300},
	}
	-- 画像を配置する
	skin.destination = {
		-- orangeという名前で切り出した画像を左下から0px,0pxの位置に横幅300px,高さ300pxの大きさで貼り付ける
		{id = "orange", dst = {
			{x = 0, y = 0, w = 300, h = 300}
		}},
		{id = "blue", dst = {
			{x = 1620, y = 0, w = 300, h = 300}
		}}
	}
	return skin
end

return{
	header = header,
	main = main
}