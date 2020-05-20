class CoronalinksController < ApplicationController

    def index
      if
        name = params[:name]
        @coronalinks = Coronalink.search(name)
        json_response(@coronalinks)
      elsif
        link = params[:link]
        @coronalinks = Coronalink.link_search(link)
        json_response(@coronalinks)
      else
        description = params[:description]
        @coronalinks = Coronalink.description_search(description)
        json_response(@coronalinks)
      end
    end
  
    def show
      @coronalink = Coronalink.find(params[:id])
      json_response(@coronalink)
    end
  
    def create
      @coronalink = Coronalink.create!(coronalink_params)
      json_response(@coronalink)
    end
  
    def update
      @coronalink = Coronalink.find(params[:id])
      if @coronalink.update!(coronalink_params)
        render status: 200, json: {
          message: "This coronalink has been updated successfully."
        }
      end
    end
  
    def destroy
      @coronalink = Coronalink.find(params[:id])
      @coronalink.destroy
    end
  
    private
    def json_response(object, status = :ok)
      render json: object, status: status
    end
  
    def coronalink_params
      params.permit(:name, :description, :link)
    end
  end
  