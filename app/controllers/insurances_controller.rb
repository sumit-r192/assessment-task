class InsurancesController < ApplicationController
  before_action :initialize_insurance, only: %i[new]
  before_action :find_insurance, only: %i[update]

  def new;end

  def create
    @insurance = Insurance.new(insurance_params)
    @insurance.save
  end

  def update
    @insurance.update(@insurance_callback_params)
  end

  private

  def initialize_insurance
    @insurance = Insurance.new
  end

  def find_insurance
    @insurance = Insurance.find_by(id: params[:id])
  end

  def insurance_params
    params.require(:insurance).permit(:first_name, :last_name, :email, :address_line, :phone_number, :city, :state, :province, :postal_code, :assessment)
  end

  def insurance_callback_params
    params.require(:insurance).permit(:is_french, :is_english, :home_owenr_1, :home_owenr_2, :home_owenr_3, :type_of_property, :existing_homeowner, :purchase_date, :lot_number, :property_address, :property_city, :property_zip, :bound_by_water, :water_or_sewer, :issued_to_client, :denied_to_client, :notes, :referal_agent_name)
  end
end
