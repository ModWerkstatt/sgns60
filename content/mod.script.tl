local mod = {}

mod.postRunFn = function(captureParams : NativeLuaTable, configDict : {{string, string}}, allModParams : {string : {string : integer}} )
	log.message("postRunFn called")

	local ganzzug_hide: {{string}} = {
		[1] = { 
			"mw_sgns60::/vehicle/waggon/sgns60/sgssy_ganzzug_pic.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/sgssy2_ganzzug_pic.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/sgns_gts_ganzzug_gts.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/sgns_sbb_ganzzug_sbb.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgssy_ganzzug_pic.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgssy2_ganzzug_pic.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_gts_ganzzug_gts.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_sbb_ganzzug_sbb.mdl",
		},
		[2] = { }
	}
	local fake_hide: {{string}} = {
		[1] = {
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_aae.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_db.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_db2.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_db3.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_ermewa.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_ermewa2.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_err.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_gatx.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_gts.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_gts_ganzzug_gts.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_hupac.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_hupac2.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_hupac3.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_kombiverkehr.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_mfd.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_rca.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_rca2.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_sbb.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_sbb_ganzzug_sbb.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_stb.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgns_vtg.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgssy.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgssy2.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgssy_ganzzug_pic.mdl",
			"mw_sgns60::/vehicle/waggon/sgns60/fake_sgssy2_ganzzug_pic.mdl",
		},
		[2] = { }
	}
	
	local selectedfilter_ganzzug: integer = allModParams[getCurrentModId()].sgns60_ganzzug

	for _, v in ipairs(ganzzug_hide[selectedfilter_ganzzug]) do
		debugPrint("hide " .. v .. api.res.modelRep.find(v))
		api.res.modelRep.setVisible(api.res.modelRep.find(v), false)
	end

	local selectedfilter_fake: integer = allModParams[getCurrentModId()].sgns60_fake

	for _, v in ipairs(fake_hide[selectedfilter_fake]) do
		debugPrint("hide " .. v .. api.res.modelRep.find(v))
		api.res.modelRep.setVisible(api.res.modelRep.find(v), false)
	end
	

end

return mod