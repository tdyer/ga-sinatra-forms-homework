
<ul> Users
  <%= @user.each do |user| %>
   <li> User name <%= user.name %> </li>
  <%= end %>
</ul>
