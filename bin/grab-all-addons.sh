# !/bin/bash

# This script is used to read the list of addons and run the script to grab the required README file from addon repo.

cd "$(dirname "$0")/../"

ADDONS_FILE="_data/addons.yml"

while read -r line
do
  # Trim whitespaces
  line=`echo $line | sed -e 's/^[[:space:]]*//'`

  IFS=: read -r key value <<< "$line"

  # Trim whitespaces
  value=`echo $value | sed -e 's/^[[:space:]]*//'`

  # If 'slug' found - run the script to grab the README file
  if [[ $key != *'slug'* ]]; then
    continue
  fi

   echo -n "Updating addon: $value... "

  ./bin/grab-addon.sh $value &> /dev/null

  echo -e "Done\n"

done < $ADDONS_FILE

exit 0
