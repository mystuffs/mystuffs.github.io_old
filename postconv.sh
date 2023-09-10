#!/bin/bash

function create_template() {
    rm "$1" &>/dev/null
    cat <<EOF >>"$1"
<!DOCTYPE html>
<html>
  <!-- Header section -->
  <header>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>General Web Logs</title>
    <link rel="stylesheet" href="../../style.css">
  </header>
  <!-- Header section end -->

<!-- Body section -->
  <body>
    <h3 id="normal">$2</h3>
    $3
  </body>
<!-- Body section end -->
</html>
EOF
}

function main() {
    create_template "$1" "$2" "$(cat $3)"
}

# "$1" - represent the filename
# "$2" - represent the title
# "$3" - represent the content
# "test.html" "Hello world" "$(cat input.html)"
main "$1" "$2" "$3"
