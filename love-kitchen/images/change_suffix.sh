#!/bin/bash

old_ext='JPG'   #旧的扩展名
new_ext='jpg'   #新的扩展名

all=$(ls .|grep $old_ext)
for image in $all
do
  main_name=${image%%${old_ext}}
  mv $image ${main_name}$new_ext
  echo "$image --> ${main_name}$new_ext"
done
