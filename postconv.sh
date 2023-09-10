#!/bin/bash

function create_template() {
    rm "$1" &>/dev/null
    cat <<EOF >>"$1"
<!DOCTYPE html>
<html>
  <!-- Header section -->
  <head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>$2 Web Logs</title>
    <link rel="icon" type="image/gif" href="../../assets/cutdoggy.gif">
    <link rel="stylesheet" href="../../style.css">
  </head>
  <!-- Header section end -->

<!-- Body section -->
  <body>
    <h3 id="normal">$3</h3>
    $4
  </body>
<!-- Body section end -->
</html>
EOF
}

function main() {
    create_template "$1" "$2" "$3" "$(cat $3)"
}

# "$1" - represent the filename
# "$2" - represent the category
# "$3" - represent the h3
# "$4" - represent the content
# "test.html" "Hello world" "General" "$(cat input.html)"
main "$1" "$2" "$3" "$4"
