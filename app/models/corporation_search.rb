# encoding: utf-8
class Corporation_search
  extend  ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :name, :corporation_id, :pref_id, :admin_type, :admin_type_names, :pref

  def initialize(params=nil)
    self.pref = Pref.all
    self.admin_type_names = {
      1 => '直営',
      2 => 'デスク運営',
      3 => '代理店',
    }

    self.name           = params[:name] if params
    self.corporation_id = params[:corporation_id] if params
    self.pref_id        = params[:pref_id] if params
    self.admin_type     = params[:admin_type] if params
  end

  def persisted?
    false
  end
end
