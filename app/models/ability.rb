# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :seller
      can :manage, Service
    else
      can :read, Service
    end
  end
end
