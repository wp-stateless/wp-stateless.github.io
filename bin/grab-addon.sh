# !/bin/bash

# This script is used to read the addons config and grab the required README file from addon repo.

cd "$(dirname "$0")/../"

SLUG=$1
SLUG="$(basename $SLUG .md)"

if [ ! -n "$SLUG" ]; then
  echo "Slug parameter is required"
  exit 1
fi

ADDONS_FILE="_data/addons.yml"

# Search for the block with slug in addons file
FOUND=false
IS_BUTTON=false

while read -r line
do
  # Trim whitespaces
  line=`echo $line | sed -e 's/^[[:space:]]*//'`

  IFS=: read -r key value <<< "$line"

  # Trim whitespaces
  value=`echo $value | sed -e 's/^[[:space:]]*//'`

  # If desired slug found - read values from the next lines
  if [[ $key == *'slug'* && $value == $SLUG ]]; then
    FOUND=true
    continue
  fi

  # Read values
  if [[ $FOUND == true ]]; then
    # If another slug is found - stop
    if [[ $key == *'slug'* ]]; then
      break
    fi

    # If found empty line - stop
    if [ ! -n "$line" ]; then
      break
    fi

    if [[ $IS_BUTTON == true ]]; then
      BUTTON="$BUTTON\n  $line"
    fi

    if [[ $key == *'name'* ]]; then
      NAME=$value
    fi

    if [[ $key == *'repo'* ]]; then
      REPO=$value
    fi

    if [[ $key == *'branch'* ]]; then
      BRANCH=$value
    fi

    if [[ $key == *'wp'* ]]; then
      WP=$value
    fi

    if [[ $key == *'is_theme'* ]]; then
      IS_THEME=$value
    fi

    if [[ $key == *'button'* ]]; then
      BUTTON="button: $value"
      IS_BUTTON=true
    fi
  fi
done < $ADDONS_FILE

# Check if all required values are found
if [ ! -n "$NAME" ]; then
  echo "Addon name not found, could not parse addons config data"
  exit 1
fi

if [ ! -n "$REPO" ]; then
  echo "Addon repository not found, could not parse addons config data"
  exit 1
fi

if [ ! -n "$BRANCH" ]; then
  BRANCH='latest'
fi

# Write file header
FILE="addons/${SLUG}.md"

echo "---" > $FILE
echo "title: ${NAME}" >> $FILE
echo "permalink: /addons/${SLUG}/" >> $FILE
echo "layout: addon" >> $FILE

if [ -n "$REPO" ]; then
  echo "repo: ${REPO}" >> $FILE
fi

if [ -n "$WP" ]; then
  echo "wp: ${WP}" >> $FILE
fi

if [ -n "$IS_THEME" ]; then
  echo "is_theme: ${IS_THEME}" >> $FILE
fi

if [ -n "$BUTTON" ]; then
  echo -e "${BUTTON}" >> $FILE
fi

echo "---" >> $FILE
echo "" >> $FILE

# Append README file
URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}/README.md"

curl $URL -L >> $FILE
