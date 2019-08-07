Given /^"nosqlmap" is installed$/ do
  ensure_python_script_installed('sqlmap')
end

When /^I launch (?:a|an) "nosqlmap" attack with:$/ do |command|
  add_to_profile('nosqlmap_path', path_to_python_script("nosqlmap"))
  add_to_profile('nosqlmap', path_to_python_script("nosqlmap"))

  run_with_profile command
end
