# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    if user.nil?
      can :read, Post
    elsif user.admin?
      can :manage, Post
    else
      can %i[read create], Post
      can %i[update destroy], Post, user_id: user.id
    end
  end
end
