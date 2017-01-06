class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
        has_and_belongs_to_many  :managements
        
        has_many :jobs
        has_many :contracts, through: :jobs
      
        #has_many :jobs, :through => :jobs
        
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #attr_accessor :management_id
        # belongs_to :management

         #attr_accessible :management_id
         
        
   def active_for_authentication? 
    super && approved? 
   end 

   def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
   end
   
   def userfullname
     "#{first_name} #{last_name}"
   end
end
