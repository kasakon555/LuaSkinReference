--[[
	22のサンプルをforを用いて画像の定義と配置を行う
]]

local header = {
	type = 5,			        -- 0:7k, 1:5k, 2:14k, 3:10k, 4:9k, 5:select, 6:decide, 7:result, 15:courceresult, 16:24k, 17:24kDouble
	name = "23_useFor",   -- スキンの名前
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

	skin.image = {}

	skin.destination = {}

	-- forを使って画像の定義と配置を行う
	local partsName = {"bigginer", "normal", "hyper", "another", "insame"}
	local imgPosY = {0, 97, 194, 291, 388}
	local dstPositionY = {0, 100, 200, 300, 400}

	for i = 1, 5, 1 do
		-- 画像を定義
		table.insert(skin.image, {
			id = partsName[i], src = 1, x = 0, y = imgPosY[i], w = imageWidth, h = imageHeight
		})
		-- 画像を配置
		table.insert(skin.destination, {
			id = partsName[i], dst = {
				{x = 0, y = dstPositionY[i], w = imageWidth, h = imageHeight}
			}
		})
	end

	return skin
end

return{
	header = header,
	main = main
}