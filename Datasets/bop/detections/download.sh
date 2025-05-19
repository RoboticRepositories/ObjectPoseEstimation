#!/usr/bin/env bash

wget https://bop.felk.cvut.cz/media/data/bop_datasets_extra/bop23_default_detections_for_task4.zip

unzip bop23_default_detections_for_task4.zip

mv bop23_default_detections_for_task4/cnos-fastsam .

rm -fr bop23_default_detections_for_task4 __MACOSX bop23_default_detections_for_task4.zip

cd cnos-fastsam

for file in cnos-fastsam_*.json; do
  newname=$(echo "$file" | sed -E 's/_[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}(.json)$/.json/')
  if [[ "$file" != "$newname" ]]; then
    mv "$file" "$newname"
  fi
done

