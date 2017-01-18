module ApplicationHelper
  def app_name
    "CMG v3"
  end
  
  def admin_types
     ['AdminUser', 'ManagerUser', 'DancerUser']
  end
     
     
   # def begin_weekly_calendar
   #  @begin_calendar = Date.today.beginning_of_week(start_day = :sunday)
   # end

   # def end_weekly_calendar(weeks)
   #  @begin_calendar = Date.today.beginning_of_week(start_day = :sunday)
   #  @end_calendar = @begin_calendar + (weeks*7)-1
   # end
end
