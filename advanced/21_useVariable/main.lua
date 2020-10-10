--[[
	変数を使ってみる
    画像配置サンプル
]]

local header = {
	type = 5,			        -- 0:7k, 1:5k, 2:14k, 3:10k, 4:9k, 5:select, 6:decide, 7:result, 15:courceresult, 16:24k, 17:24kDouble
	name = "21_useVariable",   -- スキンの名前
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

    skin.source = {
		{id = 1, path = "img/image01.png"},
	}

	skin.image = {
		{id = "orange", src = 1, x = 0, y = 0, w = 300, h = 300},
		{id = "blue", src = 1, x = 0, y = 700, w = 300, h = 300},
	}

	-- 変数を定義
	local dstWidth = 300
	local dstHeight = 300

	skin.destination = {}

	-- 定義した変数をw値とh値に使用（メンテナンスが楽）
	table.insert(skin.destination, {
		id = "orange", dst = {
			{x = 0, y = 0, w = dstWidth, h = dstHeight}
		}
	})

	-- 変数の値を変化させてみる
	dstWidth = 150
	dstHeight = dstHeight - 200

	-- 変数の値が変化しているか確認
	table.insert(skin.destination, {
		id = "blue", dst = {
			{x = 1620, y = 0, w = dstWidth, h = dstHeight}
		}
	})
	

	return skin
end

return{
	header = header,
	main = main
}