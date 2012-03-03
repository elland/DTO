class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :favorites

  def toggle_fav(comic)
    if is_fav?(comic)
      favorites.where(comic: comic.to_i).destroy_all
    else
      favorites.create(comic: comic.to_i)
    end
  end

  def is_fav?(comic)
    return true unless favorites.where(comic: comic.to_i).empty?
    false
  end
end
