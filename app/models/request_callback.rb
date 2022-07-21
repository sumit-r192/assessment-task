class RequestCallback < ApplicationRecord
  belongs_to :insurance

  BEST_TIME = [
    ["AM", 1], ["Between 11AM and 1PM", 2], ["PM", 3], ["Between 4PM and 6:30PM",4]
  ]
end
