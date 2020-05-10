class MhpsController < ApplicationController

  def index
    if
      name = params[:name]
      @mhps = Mhp.search(name)
      json_response(@mhps)
    elsif
      occupation = params[:occupation]
      @mhps = Mhp.occupation_search(occupation)
      json_response(@mhps)
    elsif
      address = params[:address]
      @mhps = Mhp.address_search(address)
      json_response(@mhps)
    elsif
      insurance = params[:insurance]
      @mhps = Mhp.insurance_search(insurance)
      json_response(@mhps)
    elsif
      accepting = params[:accepting]
      @mhps = Mhp.accepting_search(accepting)
      json_response(@mhps)
    elsif
      email = params[:email]
      @mhps = Mhp.email_search(email)
      json_response(@mhps)
    elsif
      phone = params[:phone]
      @mhps = Mhp.phone_search(phone)
      json_response(@mhps)
    elsif
      bio = params[:bio]
      @mhps = Mhp.bio_search(bio)
      json_response(@mhps)
    elsif
      imgref = params[:imgref]
      @mhps = Mhp.imgref_search(imgref)
      json_response(@mhps)
    elsif
      latitude = params[:latitude]
      @mhps = Mhp.latitude_search(latitude)
      json_response(@mhps)
    elsif
      longitude = params[:longitude]
      @mhps = Mhp.longitude_search(longitude)
      json_response(@mhps)
    else
      link = params[:link]
      @mhps = Mhp.link_search(link)
      json_response(@mhps)
    end
  end

  def show
    @mhp = Mhp.find(params[:id])
    json_response(@mhp)
  end

  def create
    @mhp = Mhp.create!(mhp_params)
    json_response(@mhp)
  end

  def update
    @mhp = Mhp.find(params[:id])
    if @mhp.update!(mhp_params)
      render status: 200, json: {
        message: "This mhp has been updated successfully."
      }
    end
  end

  def destroy
    @mhp = Mhp.find(params[:id])
    @mhp.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def mhp_params
    params.permit(:name, :occupation, :address, :insurance, :accepting, :email, :phone, :bio, :link, :imgref, :latitude, :longitude)
  end
end
