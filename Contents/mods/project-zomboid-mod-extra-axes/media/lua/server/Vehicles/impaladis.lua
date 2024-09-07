local distributionTable = VehicleDistributions[1]

VehicleDistributions.BabyImpalaTrunk = {
	rolls = 1,
	items ={
		"Base.BigHikingBag", 500,
		"Base.Suit_Jacket", 500,
		"Base.Suit_Jacket", 500,
		"Base.Trousers_Suit", 500,
		"Base.Trousers_Suit", 500,
		"Base.Shoes_Black", 500,
		"Base.Shoes_Black", 500,
		"Base.HandTorch", 500,
		"Base.HandTorch", 500,
		"Base.Lighter", 500,
		"Base.Matches", 500,
		"Base.Matches", 500,
		"Base.Matches", 500,
		"Base.Matches", 500,
		"Base.HuntingKnife", 500,
		"Base.HuntingKnife", 500,
		"Base.FlintKnife", 500,
		"Base.Shovel", 500,
		"Base.Shovel", 500,
		"Base.HandAxe", 500,
		"Base.PetrolCan", 500,
		"Base.DuctTape", 500,
		"Base.DuctTape", 500,
		"Base.DuctTape", 500,
		"Base.WoodenLance", 500,
		"Base.Pistol", 500,
		"Base.Pistol", 500,
		"Base.ShotgunSawnoff", 500,
		"Base.Shotgun", 500,
		"Base.ShotgunShells", 500,
		"Base.Bullets9mm", 500,
		"Base.Salt", 500,
		"Base.Salt", 500,
		"Base.Salt", 500,
		"Base.Katana", 500,
		"Base.Machete", 500,
		"Base.Machete", 500,
	}
}

VehicleDistributions.BabyImpalaGloveBox = {
	rolls = 1,
	items ={
		"Base.Headphones", 500,
		"Base.CDplayer", 500,
		"Base.Lighter", 500,
		"Base.Pen", 500,
		"Base.Notebook", 500,
		"Base.Bricktoys", 500,
		"Base.CreditCard", 500,
	}
}

VehicleDistributions.Supernatural = {
    TruckBed = VehicleDistributions.BabyImpalaTrunk;
    TruckbedOpen = VehicleDistributions.BabyImpalaTrunk;
	GloveBox = VehicleDistributions.BabyImpalaGloveBox;
}

distributionTable["67chevroletimpala"] = distributionTable["CarNormal"]
distributionTable["babyimpala"] = { Normal = VehicleDistributions.Supernatural; }
