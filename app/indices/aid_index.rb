ThinkingSphinx::Index.define :aid, :with => :active_record do
  indexes name
  indexes description
end