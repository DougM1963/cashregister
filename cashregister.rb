def item_name(item)
   shopping_hash = {"Mens Jeans" => 44.98, "Mens Sweatshirt" => 29.95, "Mens Socks" => "9.95", 
    	"Mens Underwear" => "14.95", "Mens Shoes" => "69.95"}  
shopping_hash[item]
end

def picture(cloths)
	 picture_hash = {"Mens Jeans" => "img//jeans.png", "Mens Sweatshirt" => "img//sweatshirt.png", "Mens Socks" => "img//socks.png", 
    "Mens Underwear" => "img//underwear.png", "Mens Shoes" => "img//shoes.png"}
picture_hash[cloths]
end