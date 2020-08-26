class ProductsController < ApplicationController
  require 'controller_response'
  include ControllerResponse

  #ToDO: Need remove after authorization will works
  skip_before_action :validate_authentication

  def create
    service = Products::ProductCreateService.new(product_params)
    service.create_product
    rest_respond_service service
  end

  def update
    service = Products::ProductUpdateService.new(product_params)
    service.update_product
    rest_respond_service service
  end

  def destroy
    service = Products::ProductDestroyService.new(product_params)
    service.destroy_product
    rest_respond_service service
  end

  def list
    service = Products::ProductListService.new(product_params)
    service.list
    rest_respond_service service
  end

  def product_type
    service = Products::ProductListService.new(product_params)
    service.product_types
    rest_respond_service service
  end

  def product_vat_type
    service = Products::ProductListService.new(product_params)
    service.product_vat_types
    rest_respond_service service
  end

  private

  def product_params
    params.permit(:id, :description, :instruction, :code, name: {}, full_name: {}, product_characteristic_attributes: {} )
  end
end
