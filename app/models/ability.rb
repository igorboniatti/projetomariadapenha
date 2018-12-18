class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
	    
	    if user
	    	if user.access_level.level == 1 # 4: Perfil nível Administrador
	    		can :manage, :all
	    	elsif user.access_level.level == 2 # 2: Perfil nível Editor
	    		can :dashboard
	    		can :access, :rails_admin	    		
	    		can :manage, Archive
	    		can :manage, Doubt
	    		can :manage, Institute
	    		can :manage, Question			
			elsif user.access_level.level == 3 # 3: Perfil nível Publicador
				can :access, :rails_admin
				can :dashboard
				can :manage, Publication
				can :manage, Comentary
			elsif user.access_level.level == 4 # 4: Perfil nível Policial
				can :access, :rails_admin
				can :dashboard				
				can :manage, OccurrenceBulletin
				can :manage, AnonymousDenounciation
				can :manage, Person
				can :manage, Phone
				can :manage, Address
			end	
	    end

	end
end
