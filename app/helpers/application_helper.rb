# frozen_string_literal: true

module ApplicationHelper
  def navbar_item(action_name, path, label = nil, classes = nil)
    is_active = params[:action] == action_name

    render(inline: %(
        <li>
          <%= link_to '#{url_for(path)}',
                      class: 'hover:underline hover:underline-offset-8 hover:text-primary hover:font-semibold  #{"underline underline-offset-8 text-primary font-semibold" if is_active} #{classes}' do %>
              <span class="whitespace-nowrap">#{label || controller_name.humanize}</span>
          <% end %>
        </li>
    ))
  end
end
