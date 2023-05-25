class InstitutionsController < ApplicationController
  def index
    # all institutionsfiltered by pundit policy(see app/policies)
    # address = params[:address]
    practice = Practice.find_by(id: params[:practice_id])
    # raise
    # @clinics = GooglePlacesService.search_medical_institutions(current_location, practice)
    # @institutions = policy_scope(Institution).where.not(latitude: nil, longitude: nil)# .where(id: @institutions.pluck(:id))

    # @markers = @institutions.map do |institution|
    #   {
    #     lat: institution.latitude,
    #     lng: institution.longitude
    #   }
    # end
  end

  def show
    @practice = Practice.find(params[:practice_id])
    # @institution = Institution.find(params[:id])
  end


  private

  def current_location
    # Implement the logic to retrieve the current location
    # You can use geolocation APIs or IP-based location detection
    # For example, you can use the `request.location` object provided by the `geocoder` gem
    request.location&.address || 'Your Default Location'
  end
end
