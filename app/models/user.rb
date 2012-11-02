class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login_name]

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :title, :body
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_type, :login_name, :corporation_id, :client_id, :login_type, :status

  belongs_to :client

  def place
    if self.client
      p self.client.id
      return self.client.place
    end
  end

  def corporations
    return Corporation.newer.all
  end

  def target_clients 
    if(self.corporation_id)
      my_corp = Corporation.find_by_id(self.corporation_id)
      #puts my_corp.clients
      return my_corp.clients 
    else
      return Client.all
    end
  end

  def user_type_names
    return Constants.user_type_names
  end

  def user_type_name
    user_type_names = Constants.user_type_names

    if user_type_names[self.user_type]
      return user_type_names[self.user_type]
    else
      return '' 
    end
  end

  def login_type_names
    return Constants.login_type_names
  end

  def user_status_names
    return Constants.user_status_names
  end

end
