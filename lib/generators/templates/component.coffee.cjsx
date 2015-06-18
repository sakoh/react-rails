<%= file_name.camelize %> = React.createClass
<% if attributes.size > 0 -%>
  propTypes:
<% attributes.each_with_index do |attribute, idx| -%>
    <%= attribute[:name].camelize(:lower) %>: <%= attribute[:type] %><% if (idx < attributes.length-1) %>,<% end %>
<% end -%>

<% end -%>

  render: ->
<% if attributes.size > 0 -%>
      <div>
<% attributes.each do |attribute| -%>
        <div><%= attribute[:name].titleize %>: {@props.<%= attribute[:name].camelize(:lower) %>}</div>
<% end -%>
      </div>

<% else -%>
    <div />
<% end -%>
