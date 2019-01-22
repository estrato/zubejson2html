#!/bin/bash

# expands variables that are enclosed with ${} and whose name starts with double underscores
expandVarsStrict(){
  local line lineEscaped
  while IFS= read -r line || [[ -n $line ]]; do  # the `||` clause ensures that the last line is read even if it doesn't end with \n
    # Escape ALL chars. that could trigger an expansion..
    IFS= read -r -d '' lineEscaped < <(printf %s "$line" | tr '`([$' '\1\2\3\4')
    # ... then selectively reenable ${__ references
    lineEscaped=${lineEscaped//$'\4'{__/\${__}
    # Finally, escape embedded double quotes to preserve them.
    lineEscaped=${lineEscaped//\"/\\\"}
    eval "printf '%s\n' \"$lineEscaped\"" | tr '\1\2\3\4' '`([$'
  done
}

JSON_DATA_FILE="$1"
TEMPLATE_FILE="template.html"

[[ -n "$JSON_DATA_FILE" ]] || (echo "Usage: $0 <json file>"; exit 2) || exit 2

DATE=`date "+%Y%m%d%H%M%S"`
HTML_FILE="cards-${DATE}.html"

__JSON_DATA__=`cat $JSON_DATA_FILE | sed -e 's/\\\\r\\\\n/<br>/g'` expandVarsStrict <<< `cat $TEMPLATE_FILE` > $HTML_FILE && echo "Wrote $HTML_FILE"
