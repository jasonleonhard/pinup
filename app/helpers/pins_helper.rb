# module PinsHelper
# end

# NOTES # helpers_extract_logic_from_the_view

# The first case, where you'd want to extract out the logic from the view refers mostly to cases like conditionals or calculations (these two come to mind right now). So for example where you would have something like this in the view:
      # < % if @user && @user.email.present? % >
        # < %= @user.email % >
      # < % end % >

# You can clean it up a little bit and put it into a helper. 
module PinsHelper
  def user_email(user)
    user.email if user && user.email.present?
  end
end

# And then in the view code, you call the helper method and pass it the user as an argument. 
      # < % = user_email(@user) % >

# This extraction makes the view code easier to read especially if you choose your helper method names wisely.
# I will strongly advice against putting too much logic in the view or the helpers, try to keep them as lean as possible. You can think of the helpers as small utility functions. 
# If you have too much logic in the view you should think about putting it in some other place, maybe the controller or in the lib folder. 