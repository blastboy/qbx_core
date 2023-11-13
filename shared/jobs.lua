---@class Job
---@field label string
---@field type? string
---@field defaultDuty boolean
---@field offDutyPay boolean
---@field grades table<integer, {name: string, payment: number, isboss: boolean}>

---@type table<string, Job>
return {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Freelancer',
                payment = 350
            },
        },
	},
	['police'] = {
		label = 'LSPD',
        type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 450
            },
			[1] = {
                name = 'Officer',
                payment = 750
            },
			[2] = {
                name = 'Sergeant',
                payment = 950
            },
			[3] = {
                name = 'Lieutenant',
                payment = 1050
            },
			[4] = {
                name = 'Chief',
				isboss = true,
                payment = 1250
            },
        },
	},
	['bcso'] = {
		label = 'BCSO',
        type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 450
            },
			[1] = {
                name = 'Officer',
                payment = 750
            },
			[2] = {
                name = 'Sergeant',
                payment = 950
            },
			[3] = {
                name = 'Lieutenant',
                payment = 1050
            },
			[4] = {
                name = 'Chief',
				isboss = true,
                payment = 1250
            },
        },
	},
	['sasp'] = {
		label = 'SASP',
        type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 450
            },
			[1] = {
                name = 'Officer',
                payment = 750
            },
			[2] = {
                name = 'Sergeant',
                payment = 950
            },
			[3] = {
                name = 'Lieutenant',
                payment = 1050
            },
			[4] = {
                name = 'Chief',
				isboss = true,
                payment = 1250
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
        type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 650
            },
			[1] = {
                name = 'Paramedic',
                payment = 950
            },
			[2] = {
                name = 'Doctor',
                payment = 1150
            },
			[3] = {
                name = 'Surgeon',
                payment = 1350
            },
			[4] = {
                name = 'Chief',
				isboss = true,
                payment = 1550
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
			[1] = {
                name = 'House Sales',
                payment = 75
            },
			[2] = {
                name = 'Business Sales',
                payment = 100
            },
			[3] = {
                name = 'Broker',
                payment = 125
            },
			[4] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
			[1] = {
                name = 'Driver',
                payment = 75
            },
			[2] = {
                name = 'Event Driver',
                payment = 100
            },
			[3] = {
                name = 'Sales',
                payment = 125
            },
			[4] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            [0] = {
                name = 'Driver',
                payment = 350
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
			[1] = {
                name = 'Showroom Sales',
                payment = 75
            },
			[2] = {
                name = 'Business Sales',
                payment = 100
            },
			[3] = {
                name = 'Finance',
                payment = 125
            },
			[4] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 450
            },
			[1] = {
                name = 'Novice',
                payment = 750
            },
			[2] = {
                name = 'Experienced',
                payment = 950
            },
			[3] = {
                name = 'Advanced',
                payment = 1050
            },
			[4] = {
                name = 'Manager',
				isboss = true,
                payment = 1250
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Judge',
                payment = 100
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Associate',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Journalist',
                payment = 450
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Driver',
                payment = 350
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Collector',
                payment = 350
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Picker',
                payment = 350
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Sales',
                payment = 350
            },
        },
	},
    ['catcafe'] = {
		label = 'Cat Cafe',
		defaultDuty = true,
        offDutyPay = false,
		grades = {
            [0] = { name = 'Recruit', payment = 350 },
			[1] = { name = 'Novice', payment = 450 },
			[2] = { name = 'Experienced', payment = 550 },
			[3] = { name = 'Advanced', payment = 650 },
			[4] = { name = 'Manager', isboss = true, payment = 750 },
        },
	},
    ['henhouse'] = {
		label = 'Hen House',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = { name = 'Recruit', payment = 350 },
			[1] = { name = 'Novice', payment = 450 },
			[2] = { name = 'Experienced', payment = 550 },
			[3] = { name = 'Advanced', payment = 650 },
			[4] = { name = 'Manager', isboss = true, payment = 750 },
        },
	},
    ['beanmachine'] = {
		label = 'Bean Machine',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = { name = 'Recruit', payment = 350 },
			[1] = { name = 'Novice', payment = 450 },
			[2] = { name = 'Experienced', payment = 550 },
			[3] = { name = 'Advanced', payment = 650 },
			[4] = { name = 'Manager', isboss = true, payment = 750 },
        },
	},
}
