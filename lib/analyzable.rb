module Analyzable
  
  def average_price(products)
    total = 0
    products.each do |product|
      total += product.price.to_f
    end
    (total/products.length).round(2)
  end
  
  def count_by_brand(products)
    brands = {}
    
    products.each do |product|
      if brands.keys.include?(product.brand)
        brands[product.brand] += 1
      else
        brands[product.brand] = 1
      end
      return brands
    end
  end
    
  def count_by_name(products)
    names = {}
    
    products.each do |product|
      if names.keys.include?(product.name)
        names[product.name] += 1
      else
        names[product.name] = 1
      end
      return names
    end
  end
  
  def print_report(products)
    stars = "*" * 15
    puts "Inventory by brand:"
    puts
    count_by_brand(products).each do |k,v|
      puts "#{k}: #{v}"
    end
    puts
    puts stars
    puts "Inventory by name:"
    puts
    count_by_name(products).each do |k,v|
      puts "#{k}: #{v}"
    end
    puts
    puts stars
    puts "Average price:"
    puts
    puts "$#{average_price(products)}"
    return average_price(products).to_s
    # Had to add that to make tests pass
  end
    
end
