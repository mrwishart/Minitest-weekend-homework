def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, increase)
  shop[:admin][:pets_sold] += increase
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breedname)
  pets_found = []
  for pet in shop[:pets]
    if pet[:breed] == breedname
      pets_found.push(pet)
    end
  end
  return pets_found
end

def find_pet_by_name(shop, petname)
  for pet in shop[:pets]
    if pet[:name] == petname
      return pet
    end
  end
  #404: Pet not found!
  return nil
end

def remove_pet_by_name(shop, petname)
  for pet in shop[:pets]
    if pet[:name] == petname
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop, newpet)
  shop[:pets].push(newpet)
end
