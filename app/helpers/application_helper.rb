module ApplicationHelper
  def navbar_item(action_name, path, label = nil, classes = nil)
    is_active = params[:action] == action_name

    render(inline: %(
        <li>
          <%= link_to '#{url_for(path)}',
                      class: '#{'underline underline-offset-8 text-info font-black' if is_active} #{classes}' do %>
              <span class="whitespace-nowrap">#{label || controller_name.humanize}</span>
          <% end %>
        </li>
    ))
  end
end
