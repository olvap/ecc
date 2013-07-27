module ErrorMessagesHelper
  # Render error messages for the given objects. The :message and :header_message options are allowed.
  def error_messages_for(*objects)
    options = objects.extract_options!
    options[:message] ||= "Corrija os erros e tente novamente"
    messages = objects.compact.map { |o| o.errors.full_messages }.flatten
    unless messages.empty?
      content_tag(:div, class: "error_explanation") do
        list_items = messages.map { |msg| content_tag(:li, msg) }
        content_tag(:h3, options[:message]) + content_tag(:ul, list_items.join.html_safe)
      end
    end
  end

  module FormBuilderAdditions
    def error_messages(options = {})
      @template.error_messages_for(@object, options)
    end
  end
end

ActionView::Helpers::FormBuilder.send(:include, ErrorMessagesHelper::FormBuilderAdditions)