--[[
	forを使わない場合
    画像配置サンプル
]]

local header = {
	type = 5,			        -- 0:7k, 1:5k, 2:14k, 3:10k, 4:9k, 5:select, 6:decide, 7:result, 15:courceresult, 16:24k, 17:24kDouble
	name = "22_notuseFor",   -- スキンの名前
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
		{id = 1, path = "img/difficult.png"},
	}

	local imageWidth = 327
	local imageHeight = 97

	skin.image = {
		{id = "bigginer", src = 1, x = 0, y = 0, w = imageWidth, h = imageHeight},
		{id = "normal", src = 1, x = 0, y = 97, w = imageWidth, h = imageHeight},
		{id = "hyper", src = 1, x = 0, y = 194, w = imageWidth, h = imageHeight},
		{id = "another", src = 1, x = 0, y = 291, w = imageWidth, h = imageHeight},
		{id = "insame", src = 1, x = 0, y = 388, w = imageWidth, h = imageHeight},
	}

	skin.destination = {}

	table.insert(skin.destination, {
		id = "bigginer", dst = {
			{x = 0, y = 0, w = imageWidth, h = imageHeight}
		}
	})

	table.insert(skin.destination, {
		id = "hyper", dst = {
			{x = 0, y = 100, w = imageWidth, h = imageHeight}
		}
	})

	table.insert(skin.destination, {
		id = "another", dst = {
			{x = 0, y = 200, w = imageWidth, h = imageHeight}
		}
	})

	table.insert(skin.destination, {
		id = "insame", dst = {
			{x = 0, y = 300, w = imageWidth, h = imageHeight}
		}
	})
	

	return skin
end

return{
	header = header,
	main = main
}