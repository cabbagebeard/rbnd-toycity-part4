require_relative 'find_by'
require_relative 'errors'
require 'csv'

class Udacidata
  
  @@data_path = File.dirname(__FILE__) + "/../data/data.csv"

	create_finder_methods :name, :brand

  	def self.create(opts = {})
  		new_prod = self.new(opts)
  		CSV.open(@@data_path, "a+") do |csv|
    		csv << [new_prod.id, new_prod.brand, new_prod.name, new_prod.price]
  		end
  		return new_prod
  	end 
 
  def self.all
    all_array = []

    CSV.foreach( @@data_path, headers: true ) do |prod|
      all_array << self.new( id: prod["id"], brand: prod["brand"], name: prod["product"], price: prod["price"] )
    end
    all_array
  end
  
  def self.first(n = 1)
    if n == 1
      all.first
    else
      all.first(n)
    end
  end
  
  def self.last(n = 1)
    if n == 1
      all.last
    else
      all.last(n)
    end
  end
  
  def destroy(id)
    # ProductNotFoundError
  end
  
  def update
    # should change the information for a given Product object, and save the new data to the database.
    # Product.find(5).update(brand: "Udacity")
  end
  
  def self.find(id)
    all.find { |product| product.id == id }
  end
  
  def find_by_#{attribute}
  # The methods Product.find_by_brand and Product.find_by_name should return a Product object for the first product in the database that has a matching brand or product name. 
  # Note: Use metaprogramming techniques to define these methods. There are hints to help you get started in find_by.rb.
  end
  
  def where
    # where(brand: Lego)
    # where(name: Voltron)
  end

end
