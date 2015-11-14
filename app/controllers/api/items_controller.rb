class Api::ItemsController < InheritedResources::Base
  actions :index, :show
  respond_to :json
end