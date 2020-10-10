--[[
	https://www.kasacontent.com/category/musicgame/beatoraja/beatoraja-skin/
]]

local header = {
    type = 6,
    name = "10_decideSample(GPaper-Lua)",
    w = 1920,
    h = 1080,
	fadeout = 500,
	scene = 3000,
	input = 500,
    filepath = {
        -- カスタムファイル
        {name = "フェードアウト時の色", path = "fadeout/*.png"},
    },
    property = {
        -- カスタムオプション
    },
}

local function main()
    -- ヘッダ情報コピー
    local skin = {}
    for k, v in pairs(header) do
        skin[k] = v
    end

    skin.source = {
		{id = 1, path = "img/number.png"},
		{id = 2, path = "img/bg.png"},
		{id = 3, path = "img/difficult.png"},
		{id = 4, path = "img/parts01.png"},
		{id = 5, path = "fadeout/*.png"},
	}
    skin.font = {
		{id = 0, path = "font/title.fnt"},
		{id = 1, path = "font/subtitle.fnt", type = 1}
	}
    skin.image = {
		{id = "fadeout_bg", src = 5, x = 0, y = 0, w = 8, h = 8},
		{id = "bg", src = 2, x = 0, y = 0, w = 1920, h = 1080},
		{id = "banner_spase", src = 4, x = 0, y = 0, w = 600, h = 480},
		{id = "notes-graph_spase", src = 4, x = 0, y = 480, w = 1326, h = 490},
		{id = "music-info-logo", src = 4, x = 600, y = 210, w = 473, h = 85},
		{id = "arrow-base", src = 4, x = 600, y = 0, w = 726, h = 210},
		{id = "arrow-move", src = 4, x = 1350, y = 0, w = 850, h = 210 },
		{id = "gear_s", src = 4, x = 2198, y = 0, w = 190, h = 190},
		{id = "gear_b", src = 4, x = 1350, y = 337, w = 586, h = 586},
		{id = "bpm-logo", src = 4, x = 1350, y = 210, w = 290, h = 55},
		{id = "from", src = 4, x = 600, y = 294, w = 38, h = 43},
		{id = "totalnotes-logo", src = 4, x = 1652, y = 210, w = 379, h = 55},
		{id = "bigginer", src = 3, x = 0, y = 0, w = 320, h = 97},
		{id = "normal", src = 3, x = 0, y = 97, w = 320, h = 97},
		{id = "hyper", src = 3, x = 0, y = 194, w = 320, h = 97},
		{id = "another", src = 3, x = 0, y = 291, w = 320, h = 97},
		{id = "another2", src = 3, x = 0, y = 388, w = 320, h = 97},
		{id = "thumbtack", src = 4, x = 1100, y = 210, w = 75, h = 85},
	}
    skin.value = {
		{id = "maxbpm", src = 1, x = 0, y = 0, w = 380, h = 43, divx = 10, digit = 4, ref = 90, align = 2},
		{id = "minbpm", src = 1, x = 0, y = 0, w = 380, h = 43, divx = 10, digit = 4, ref = 91, align = 2},
		{id = "totalnotes", src = 1, x = 0, y = 0, w = 380, h = 43, divx = 10, digit = 4, ref = 74, align = 2},
	}
    skin.text = {
		{id = "genre", font = 1, size = 40, ref = 13, wrapping = false, overflow = 1, outlineColor = "000000ff", outlineWidth = 1},
		{id = "title", font = 1, size = 70, ref = 12, wrapping = false, overflow = 1, outlineColor = "000000ff", outlineWidth = 1},
		{id = "artist", font = 1, size = 40, ref = 14, wrapping = false, overflow = 1, outlineColor = "000000ff", outlineWidth = 1},
		{id = "tablename&tablelevel", font = 1, size = 40, ref = 1003, wrapping = false, overflow = 1, outlineColor = "000000ff", outlineWidth = 1},
	}
	skin.judgegraph = {
		{id = "notes-graph", type = 0}
	}
	skin.bpmgraph = {
		{id = "bpmgraph"}
	}
    skin.destination = {
		{id = "bg", dst = {
			{x = 0, y = 0, w = 1920, h = 1080}
		}},
		{id = "arrow-base", dst = {
			{x = 366, y = 866, w = 726, h = 210}
		}},
		{id = "arrow-move", dst = {
			{time = 0, x = 498, y = 866, w = 850, h = 210},
			{time = 4000, x = 1090, acc = 2}
		}},
		{id = "music-info-logo", dst = {
			{x = 1340, y = 933, w = 473, h = 85}
		}},
		{id = "gear_s", dst = {
			{time = 0, angle = 0, x = -95, y = -95, w = 190, h = 190},
			{time = 5000, angle = -360}
		}},
		{id = "gear_b", dst = {
			{time = 0, angle = 0, x = 1627, y = -293, w = 586, h = 586},
			{time = 5000, angle = 360}
		}},
		{id = "banner_spase", dst = {
			{x = 12, y = 421, w = 600, h = 480}
		}},
		{id = "notes-graph_spase", dst = {
			{x = 595, y = 421, w = 1326, h = 485}
		}},
		{id = -100, dst = {
			{x = 80, y = 455, w = 510, h = 380}
		}},
		{id = "genre", loop = 2000, dst = {
			{time = 0, x = 75, y = 250, w = 1700},
			{time = 2000, x = 120, acc = 2}
		}},
		{id = "title", dst = {
			{x = 75, y = 170, w = 1800, r = 242, g = 224, b = 200}
		}},
		{id = "artist", loop = 2000, dst = {
			{time = 0, x = 75, y = 70, w = 1700},
			{time = 2000, x = 120, acc = 2}
		}},
		{id = "tablename&tablelevel", dst = {
			{x = 80, y = 360, w = 500, r = 242, g = 200, b = 227}
		}},
		{id = "notes-graph", dst = {
			{x = 660, y = 460, w = 1200, h = 380}
		}},
		{id = "bpmgraph", op = {177,-1177}, dst = {
			{x = 660, y = 460, w = 1200, h = 380}
		}},
		{id = "bpmgraph", op = {1177}, dst = {
			{x = 660, y = 460, w = 1200, h = 380}
		}},
		{id = "bpm-logo", dst = {
			{x = 640, y = 317, w = 290, h = 55}
		}},
		{id = "maxbpm", dst = {
			{x = 1150, y = 325, w = 38, h = 43}
		}},
		{id = "minbpm", dst = {
			{x = 945, y = 325, w = 38, h = 43}
		}},
		{id = "from", dst = {
			{x = 1100, y = 325, w = 38, h = 43}
		}},
		{id = "totalnotes-logo", dst = {
			{x = 1330, y = 317, w = 379, h = 55}
		}},
		{id = "totalnotes", dst = {
			{x = 1730, y = 325, w = 38, h = 43}
		}},
		{id = "bigginer", op = {151}, dst = {
			{x = 30, y = 920, w = 320, h = 97}
		}},
		{id = "normal", op = {152}, dst = {
			{x = 30, y = 920, w = 320, h = 97}
		}},
		{id = "hyper", op = {153}, dst = {
			{x = 30, y = 920, w = 320, h = 97}
		}},
		{id = "another", op = {154}, dst = {
			{x = 30, y = 920, w = 320, h = 97}
		}},
		{id = "another2", op = {155}, dst = {
			{x = 30, y = 920, w = 320, h = 97}
		}},
		{id = "thumbtack", dst = {
			{x = 280, y = 810, w = 75, h = 85}
		}},
		{id = "thumbtack", dst = {
			{x = 1200, y = 825, w = 75, h = 85}
		}},
		{id = "fadeout_bg", loop = 500, timer = 2 , dst = {
			{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0},
			{time = 500, a = 255}
		}},
	}
	
    return skin
end

return {
    header = header,
    main = main
}