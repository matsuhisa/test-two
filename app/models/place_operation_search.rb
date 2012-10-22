# encoding: utf-8
class Place_operation_search
  extend  ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :id, :name, :pref_id, :pref

  def initialize(params=nil)
    self.pref    = Pref.all
    self.id      = params[:id] if params
    self.name    = params[:name] if params
    self.pref_id = params[:pref_id] if params
  end

  def persisted?
    false
  end
end
