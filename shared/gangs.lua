---@class Gang
---@field label string
---@field grades table<integer, {name: string, isboss: boolean}>

---@type table<string, Gang>
return {
	['none'] = {
		label = 'No Gang',
		grades = {
            [0] = {
                name = 'Unaffiliated'
            },
        },
	},
    ['soa'] = {
		label = 'Sons Of Anarchy',
		grades = {
            ['0'] = { name = 'Prospect', },
			['1'] = { name = 'Nomad', },
			['2'] = { name = 'Recruiter', },
			['3'] = { name = 'Enforcer', },
			['4'] = { name = 'Road Captain', },
			['5'] = { name = 'Sgt. At Arms', },
			['6'] = { name = 'Treasurer', 		isboss = true, },
			['7'] = { name = 'Vice-President', 	isboss = true, },
			['8'] = { name = 'President', 		isboss = true, },
        },
	},
	['scarface'] = {
		label = 'Scarface',
		grades = {
            [0] = {
                name = 'Soldier'
            },
			[1] = {
                name = 'Capo'
            },
			[2] = {
                name = 'Consigliere'
            },
			[3] = {
                name = 'Underboss',
				isboss = true
            },
            [3] = {
                name = 'Boss',
				isboss = true
            },
        },
	}
}
