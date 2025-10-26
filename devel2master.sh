#!/bin/bash

echo "After testing and pushing changes in the devel branch:"
printf "\n\tgit checkout master"
printf "\n\tgit merge devel"
printf "\n\t\tResolve any conflicts (search for <<<<)"
printf "\n\tgit push origin master\n\n"
