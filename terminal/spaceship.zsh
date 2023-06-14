# Display time
#SPACESHIP_TIME_SHOW=true

#Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false

SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  git            # Git section (git_branch + git_status)
  exec_time     # Execution time   
  line_sep      # Line break   
  package        # Package version
  node           # Node.js section
  rust           # Rust section
  docker         # Docker section
  docker_compose # Docker section
  aws            # Amazon Web Services section
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)


SPACESHIP_USER_SHOW=always 
SPACESHIP_PROMPT_ADD_NEWLINE=false 
SPACESHIP_CHAR_SYMBOL="❯" 
SPACESHIP_CHAR_SUFFIX=" "
