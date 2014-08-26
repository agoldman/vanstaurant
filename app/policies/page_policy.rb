class PagePolicy < Struct.new(:user, :page)

  def admin?
    user && user.admin?
  end
end
