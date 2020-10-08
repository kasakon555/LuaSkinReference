--[[
	画像選択サンプル
]]

local header = {
	type = 5,			        -- 0:7k, 1:5k, 2:14k, 3:10k, 4:9k, 5:select, 6:decide, 7:result, 15:courceresult, 16:24k, 17:24kDouble
	name = "05_filepath",   		-- スキンの名前
	w = 1920,                   -- スキンの横幅
	h = 1080,                   -- スキンの高さ
	input = 500,
	fadeout = 500,
	property = {},
	filepath = {
		-- img/squ内のpngファイルを選択できるようにする
		{name = "色", path = "img/squ/*.png"}
	},
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
		-- 選択したファイルは1というIDで登録
		{id = 1, path = "img/squ/*.png"},
	}
	-- 画像の切り出し
	skin.image = {
		{id = "squ", src = 1, x = 0, y = 0, w = 900, h = 300},
	}
	-- 画像を配置する
	skin.destination = {
		-- 選択した画像を配置
		{id = "squ", dst = {
			{x = 0, y = 0, w = 300, h = 300}
		}},
	}
	return skin
end

return{
	header = header,
	main = main
}