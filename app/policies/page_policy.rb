class PagePolicy < Struct.new(:user, :page)

  def admin?
    user.admin?
  end
end
