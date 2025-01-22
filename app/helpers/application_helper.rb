module ApplicationHelper
  def navbar_item(action_name, path, label = nil, classes = nil)
    is_active = params[:action] == action_name

    render(inline: %(
        <li>
          <%= link_to '#{url_for(path)}',
                      class: 'flex gap-4 #{if is_active
                                             'underline underline-offset-8 text-purple-800 font-black' end} #{classes}' do %>
              <span class="flex-1 whitespace-nowrap">#{label || controller_name.humanize}</span>
          <% end %>
        </li>
    ))
  end
end
