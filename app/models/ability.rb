# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in

    # Si hay ID es porque hay usuario logueado, mientras que es un usuario "invitado" en memoria, no tiene ID.
    unless user.id.nil?
      can :manage, :all, :user_id => user.id

    else
      can :create, User
      can :read, User, :id => user.id
      can :update, User, :id => user.id
    end
  end
end
