When /^"gobuster" is installed$/ do
  ensure_cli_installed("dirb")
end

When /^the GOBUSTER_WORDLISTS environment variable is set$/ do
  ensure_shell_variable_set("GOBUSTER_WORDLISTS")
end

When /^I launch (?:a|an) "gobuster" attack with:$/ do |command|
  add_to_profile('gobuster_wordlists_path', get_shell_variable("GOBUSTER_WORDLISTS"))
  run_with_profile command
  @raw_gobuster_output = all_output
end

