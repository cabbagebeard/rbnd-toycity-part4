module Analyzable

  def count_by_brand(products)
    # should accept an array of Product objects and return a hash with inventory counts, organized by brand.
    # Analyzable::count_by_brand(Product.all)
    #   =>  {"Lego"=>3, "Fisher-Price"=>2, "Nintendo"=>1, "Crayola"=>2, "Hasbro"=>2}
  end
  
  def count_by_name(products)
    # just like count_by_brand but by name
  end
  
  def average_price(products)
    # Analyzable::average_price(Product.all)
    #   => 51.44
  end
  
  def print_report
    # Analyzable::print_report(Product.all)
    #   => Average Price: $51.6
    
    # Inventory by Brand:
    # - Hasbro: 5
    #- Fisher-Price: 1
    #- Crayola: 2
    #- Lego: 2
  
    # Inventory by Name:
    #- Incredible Copper Bag: 3
    #- Synergistic Rubber Car: 2
    #- Aerodynamic Marble Computer: 3
    #- Synergistic Wooden Chair: 2
  end

end
