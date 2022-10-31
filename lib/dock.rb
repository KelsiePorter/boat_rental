require 'pry'

class Dock 
  attr_reader :name,
              :max_rental_time,
              :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    payment = {}
    payment[:card_number] = @rental_log[boat].credit_card_number
    hours_charged = hours_rented(boat) * boat.price_per_hour
    payment[:amount] = hours_charged
    payment
  end

  private

  def hours_rented(boat) 
    # option #1
    # hours_rented = boat.hours_rented
    # if hours_rented > @max_rental_time
    #   hours_rented = @max_rental_time
    # end
    # option 2
    # if boat.hours_rented > @max_rental_time
    #   @max_rental_time
    # else 
    #   boat.hours_rented
    # end
    # option 3
    [boat.hours_rented, @max_rental_time].min
  end

end