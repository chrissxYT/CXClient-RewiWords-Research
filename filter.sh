#!/bin/sh

for f in logs/* ; do
        echo $f | grep '\.gz$' >/dev/null && gunzip $f
done

for f in logs/* ; do
        grep rewinside $f && grep Wort $f || rm $f
done >/dev/null

grep -R Wort logs > words

true
