#!/bin/bash

for mail in `cut  -d";" -f3 test.txt`; do
	echo $mail
	
	curl -L -X POST \
	-H "Accept: application/vnd.github+json" -H "Authorization: Bearer $GITTOKEN" 	-H "X-GitHub-Api-Version: 2022-11-28" 	https://api.github.com/orgs/Laboratorio-III/invitations -d "{\"email\":\"$mail\",\"role\":\"direct_member\",\"team_ids\":[7504252]}"

done
