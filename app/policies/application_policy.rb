# class ApplicationPolicy
#   attr_reader :user, :record

#   def initialize(user, record)
#     @user = user
#     @record = record
#   end

#   def index?
#     false  #will be using scope rather than this method
#   end

#   def show?
#     user.admin? || record.published?
#   end

#   def create?
#     user.admin?
#   end

#   def new?
#     user.admin?
#   end

#   def update?
#     user.admin?
#   end

#   def edit?
#     user.admin?
#   end

#   def destroy?
#     user.admin?
#   end

#   def scope
#     Pundit.policy_scope!(user, record.class)
#   end

#   class Scope < Scope
#     def resolve
#       if user.admin?
#         scope.all
#       else
#         scope.where(:published => true)
#       end
#     end
# end
