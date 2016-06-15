module Analyzable
  
  def average_price(products)
    (products.inject(0){ |sum, product| sum + product.price.to_f}/products.size).round(2)
  end
  
  def count_by_brand(products)
    brands = {}
    
    products.each do |product|
      if brands.keys.include?(product.brand)
        brands[product.brand] += 1
      else
        brands[product.brand] = 1
      end
    end
    return brands
  end
    
  def count_by_name(products)
    names = {}
    
    products.each do |product|
      if names.keys.include?(product.name)
        names[product.name] += 1
      else
        names[product.name] = 1
      end
    end
    return names
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
    output = "$"
    output += "#{average_price(products)}"
  end
end
