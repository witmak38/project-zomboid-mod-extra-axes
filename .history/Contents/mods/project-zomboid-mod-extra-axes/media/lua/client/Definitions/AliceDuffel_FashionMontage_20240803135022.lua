-- INSTRUCTIONS - ADDING YOUR ITEMS --
-- Add each of your items to the list that corresponds to its BodyLocation
-- If it does not have a unique DisplayName it will not appear in the dropdown


-- This ensures the player won't get any error messages if they aren't using Fashion Montage
if getActivatedMods():contains("FashionMontage") then
  require "Definitions/_OGSN_FashionMontage"
  require "Definitions/_OGSN_FashionMontageVanillaClothes"
else
  return
end
	
-- pointless statement is pointless
ClothingSelectionDefinitions = ClothingSelectionDefinitions

local clothing = {
  -- these lists are named after the BodyLocation of the item
  -- If your item's BodyLocation = Hat then put it in "Hat"
 Hat = {
  },
  TankTop = {
  },     
  Tshirt = { --Short Sleeve
  },      
  Shirt = { -- Long Sleeve
  },       
  Socks = {
  },     
  Pants = { --Trousers
  },  
  Skirt = {
  },     
  Dress = {
  },       
  Shoes = {
  },      
  Eyes = { --Glasses 
  },        
  LeftEye = {},
  RightEye = {},
  BeltExtra = {  
  },   
  AmmoStrap = {
  "Base.Bag_DuffelBag",    
  "Base.Bag_DuffelBag_LB",
  "Base.Bag_DuffelBagTINT",    
  "Base.Bag_DuffelBagTINT_LB",  
  "Base.Bag_FoodCanned",    
  "Base.Bag_FoodCanned_LB",  
  "Base.Bag_FoodSnacks",    
  "Base.Bag_FoodSnacks_LB",
  "Base.Bag_InmateEscapedBag",    
  "Base.Bag_InmateEscapedBag_LB",
  "Base.Bag_MedicalBag",    
  "Base.Bag_MedicalBag_LB",     
  "Base.Bag_Military",  
  "Base.Bag_Military_LB",     
  "Base.Bag_MoneyBag",     
  "Base.Bag_MoneyBag_LB",     
  "Base.Bag_ShotgunBag",     
  "Base.Bag_ShotgunBag_LB",     
  "Base.Bag_ShotgunDblBag",     
  "Base.Bag_ShotgunDblBag_LB",     
  "Base.Bag_ShotgunDblSawnoffBag",     
  "Base.Bag_ShotgunDblSawnoffBag_LB",     
  "Base.Bag_ShotgunSawnoffBag",     
  "Base.Bag_ShotgunSawnoffBag_LB",     
  "Base.Bag_ToolBag",     
  "Base.Bag_ToolBag_LB",     
  "Base.Bag_WeaponBag",     
  "Base.Bag_WeaponBag_LB",     
  "Base.Bag_WorkerBag",     
  "Base.Bag_WorkerBag_LB",     
  },	
  Mask = {
  },        
  MaskEyes = {},  
  Underwear = { --Swimwear
  },   
  FullHat = {},     
  Torso1Legs1 = { -- Long Johns
  }, -- the
  Neck = {  --Ties
  },        
  Hands = { -- Gloves
  },
  Legs1 = {   
  },
  Sweater = {
  },     -- Do
  Jacket = { --Jackets  
  
  },      -- not
  FullSuit = { --Coveralls 
  },    
  FullSuitHead = {-- Hazmat
  },
  FullTop = {-- Ghillie  
  },   
  BathRobe = {},    
  TorsoExtra = { --Aprons and Vests  
  },  -- lists
  Tail = {},        -- in
  Back = {
    
  },        -- this
  Scarf = {
  },       -- file
  FannyPackFront = {
  },

  Necklace = {   
  },
  Necklace_Long = {

  },
  Nose = {
  },
  LeftWrist = {},
  RightWrist = {},
  Right_RingFinger = {},
  Left_RingFinger = {},
  Right_MiddleFinger = {},
  Left_MiddleFinger = {},
  Ears = {},
  EarTop = {},
  MaskFull = {},

}

local bodyLocations = {
}

  if #bodyLocations > 0 then
    _OGSN_FashionMontage.addBodyLocations(bodyLocations);
  end

_OGSN_FashionMontage.addClothingItems(clothing);
