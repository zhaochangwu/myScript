#!/bin/bash
#!/bin/sh
cat model.json
while read line
do
  key=$( echo $line | awk '{ print $1; }' | sed 's/://g' | sed 's/"//g')
  echo "@property (nonatomic, copy) NSString *$key;"
done < model.json
