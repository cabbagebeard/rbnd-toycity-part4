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
  
  def self.destroy(id)
    db = CSV.table(@@data_path)
    deleted = find(id)
    db.delete_if { |prod| prod[:id] == id }
    
    File.open(@@data_path, "w") do |f|
      f.write(db.to_csv)
     end
    deleted
  end

  def update(opts ={})
    @brand = opts[:brand] if opts[:brand]
    @name = opts[:name] if opts[:name]
    @price = opts[:price] if opts[:price]
    Product.destroy(@id)
    Product.create(id: @id, brand: @brand, name: @name, price: @price)
  end
  
  def self.find(id)
    all.find { |product| product.id == id }
    rescue
       raise ProductNotFoundError, "Cannot find product with an id of #{id}"
  end
  
  def self.where(opts = {})
    self.all.select { |product| opts[:brand] == product.brand || opts[:name] == product.name }
  end

end
