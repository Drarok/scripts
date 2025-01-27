_scripts_bold() {
    echo -en "\033[1m$@\033[0m"
}

_scripts_underline() {
    echo -en "\033[4m$@\033[0m"
}

_scripts_indent() {
    echo -en "$@" | sed 's/^ */\t/'
}

_scripts_indent_double() {
    echo -en "$@" | sed 's/^ */\t\t/'
}

_scripts_usage_name() {
    name=$1
    shift
    echo $(_scripts_bold NAME)
    echo "$(_scripts_indent $(_scripts_bold "$name"))" - "$@"
    echo
}

_scripts_usage_synopsis_start() {
    echo $(_scripts_bold SYNOPSIS)
    echo -n "$(_scripts_indent $(_scripts_bold "$1"))"
}

_scripts_usage_synopsis_param() {
    echo -n ' '
    _scripts_underline "$@"
}

_scripts_usage_synopsis_param_optional() {
    echo -n ' ['
    _scripts_underline "$@"
    echo -n ']'
}

_scripts_usage_synopsis_end() {
    echo -e "\n"
}

_scripts_usage_description() {
    echo $(_scripts_bold DESCRIPTION)
    echo "$(_scripts_indent "$@")"
    echo
}

_scripts_usage_options_start() {
    echo "$(_scripts_bold OPTIONS)"
}

_scripts_usage_options_name() {
    echo "$(_scripts_indent $(_scripts_bold "$@"))"
}

_scripts_usage_options_description() {
    echo "$(_scripts_indent_double "$@")"
}
