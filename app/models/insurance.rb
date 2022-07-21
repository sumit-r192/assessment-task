class Insurance < ApplicationRecord
  before_save :calculate_insurance_premium
  has_one :request_callback

  TYPE_OF_PROPERTY = [
    ["Single-family dwelling", 1], ["Condominium", 2], ["Undivided&nbsp;co-ownership", 3], ["Duplex",4], ["Triplex",5], ["Quadruplex",6], ["5 Units",7], ["6 Units",8], ["Vacant property (no building)", 9] 
  ]

  def calculate_insurance_premium
    prime_avant_tax =((((self.assessment-500000)/1000)*1.17)+320)
    emission_fees = 20
    tax = prime_avant_tax*0.09
    self.insurance_premium  = prime_avant_tax + emission_fees + tax
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
