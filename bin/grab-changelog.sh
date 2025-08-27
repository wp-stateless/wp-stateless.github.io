# !/bin/bash

# This script is used to grab the changes.md file from the wiki and use it as a page in the docs.

cd "$(dirname "$0")/../"

FILE='docs/changes.md'
URL='https://raw.githubusercontent.com/udx/wp-stateless/latest/changes.md'

echo "---" > $FILE
echo "title: Release Notes" >> $FILE
echo "sidebar_title: Release Notes" >> $FILE
echo "permalink: /docs/changelog/" >> $FILE
echo "---" >> $FILE
echo "" >> $FILE

curl $URL >> $FILE
