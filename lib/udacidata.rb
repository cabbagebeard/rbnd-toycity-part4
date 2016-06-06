require_relative 'find_by'
require_relative 'errors'
require 'csv'

class Udacidata
 
  def all
    #return an array of Product objects representing all the data in the database
  end
  
  def self.create(attributes = nil)
  # If the object's data is already in the database
  # create the object (Pass the attributes into new, and return the created object.)
  # return the object

  # If the object's data is not in the database
  # create the object
  # save the data in the database (Pass the attributes into new and save the object data to the database.)
  # return the object
  end
  
  def first
  end
  
  def first(n)
    # first(5) or first (3)
  end
  
  def last
  end
  
  def last(n)
    # last(8) or last (2)
  end
  
  def destroy(id)
    # ProductNotFoundError
  end
  
  def update
    # should change the information for a given Product object, and save the new data to the database.
    # Product.find(5).update(brand: "Udacity")
  end
  
  def find(id)
    # ProductNotFoundError
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
