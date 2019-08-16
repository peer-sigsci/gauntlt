When /^"xsstrike" is installed$/ do
  ensure_cli_installed("xsstrike")
end

When /^I launch (?:a|an) "xsstrike" attack with:$/ do | command |
  run_with_profile command
end
# usage: xsstrike.py [-h] [-u TARGET] [--data DATA] [-t THREADS] [--seeds SEEDS] [--json] [--path]
#                    [--fuzzer] [--update] [--timeout] [--params] [--crawl] [--blind]
#                    [--skip-dom] [--headers] [--proxy] [-d DELAY] [-e ENCODING]
#
# optional arguments:
#   -h, --help            show this help message and exit
#   -u, --url             target url
#   --data                post data
#   -f, --file            load payloads from a file
#   -t, --threads         number of threads
#   -l, --level           level of crawling
#   -t, --encode          payload encoding
#   --json                treat post data as json
#   --path                inject payloads in the path
#   --seeds               load urls from a file as seeds
#   --fuzzer              fuzzer
#   --update              update
#   --timeout             timeout
#   --params              find params
#   --crawl               crawl
#   --proxy               use prox(y|ies)
#   --blind               inject blind xss payloads while crawling
#   --skip                skip confirmation dialogue and poc
#   --skip-dom            skip dom checking
#   --headers             add headers
#   -d, --delay           delay between requests