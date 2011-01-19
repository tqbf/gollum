module Precious
  module Views
    class Users < Layout
      def users
        @users.map do |user|
          if user[:self]
            user[:passwordfield] = %{
                <form action='/user_password' class='password' method='POST'>
                  <input type='HIDDEN' name='name' value='#{ user[:name] }' />
                  <input name='password' type='PASSWORD' />
                </form>
}
          else
            user[:passwordfield] = "&nbsp;"
          end
          user
        end
      end
    end
  end
end
