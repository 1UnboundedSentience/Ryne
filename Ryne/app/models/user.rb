class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #skip_before_filter :verify_authenticity_token  , :except => [:create,:new,:accept]

  #before_action :authenticate_user!

end
