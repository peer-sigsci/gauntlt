Given /^"xsstrike" is installed$/ do
  ensure_python3_script_installed('xsstrike')
end

When /^the XSSTRIKE_COOKIES environment variable is set$/ do
  ensure_shell_variable_set("XSSTRIKE_COOKIES")
end

When /^I launch (?:a|an) "xsstrike" attack with:$/ do |command|
  add_to_profile('xsstrike_path', path_to_python3_script("xsstrike"))
  add_to_profile('xsstrike', path_to_python3_script("xsstrike"))

  run_with_profile command
end