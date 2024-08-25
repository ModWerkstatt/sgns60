function data()
return {
	info = {
		minorVersion = 1,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		authors = {
		    {
		        name = "ModWerkstatt",
		        role = "CREATOR",
		    },
		    {
		        name = "Kaleut",
		        role = "CREATOR",
		    },
		},
		tags = { "europe", "deutschland", "germany", "schweiz", "db", "waggon", "goods", "Intermodal", },
		minGameVersion = 0,
		dependencies = { },
		url = { "" },
	  
		params = {
			{
				key = "sgns60fake",
				name = _("Fake_sgns60_wagen"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_wagen_desc"),
				defaultIndex = 0,
			},	
        },
	},
	options = {
	},
	
	runFn = function (settings, modParams)
	local params = modParams[getCurrentModId()]

        local hidden = {
			["aae_fake.mdl"] = true,
			["db_fake.mdl"] = true,
			["db2_fake.mdl"] = true,
			["db3_fake.mdl"] = true,
			["ermewa_fake.mdl"] = true,
			["ermewa2_fake.mdl"] = true,
			["err_fake.mdl"] = true,
			["gatx_fake.mdl"] = true,
			["gts_fake.mdl"] = true,
			["gts_gts_fake.mdl"] = true,
			["hupac_fake.mdl"] = true,
			["hupac2_fake.mdl"] = true,
			["hupac3_fake.mdl"] = true,
			["kombiverkehr_fake.mdl"] = true,
			["mfd_fake.mdl"] = true,
			["rca_fake.mdl"] = true,
			["rca2_fake.mdl"] = true,
			["sbb_fake.mdl"] = true,
			["stb_fake.mdl"] = true,
			["vtg_fake.mdl"] = true,
			["sy_fake.mdl"] = true,
			["sy_pic_fake.mdl"] = true,
			["sy2_fake.mdl"] = true,
			["sy2_pic_fake.mdl"] = true,
        }

		local modelFilter = function(fileName, data)
			local modelName = fileName:match('/sgns_([^/]*.mdl)')			
						or fileName:match('/sgs([^/]*.mdl)')
			return (modelName==nil or hidden[modelName]~=true)
		end

        if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["sgns60fake"] == 0 then
				addFileFilter("model/vehicle", modelFilter)
			end
		else
			addFileFilter("model/vehicle", modelFilter)
		end
		
		addModifier( "loadModel", metadataHandler )
	end
	}
end
