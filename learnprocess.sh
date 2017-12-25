
#! /bin/bash

echo -e "\e[32m:::        ::::::::::     :::     :::::::::  ::::    :::      ::::    ::::   ::::::::  :::::::::  ::::::::::"
echo -e "\e[32m:+:        :+:          :+: :+:   :+:    :+: :+:+:   :+:      +:+:+: :+:+:+ :+:    :+: :+:    :+: :+:"
echo -e "\e[93m+:+        +:+         +:+   +:+  +:+    +:+ :+:+:+  +:+      +:+ +:+:+ +:+ +:+    +:+ +:+    +:+ +:+"
echo -e "\e[93m+#+        +#++:++#   +#++:++#++: +#++:++#:  +#+ +:+ +#+      +#+  +:+  +#+ +#+    +:+ +#++:++#:  +#++:++#"
echo -e "\e[31m+#+        +#+        +#+     +#+ +#+    +#+ +#+  +#+#+#      +#+       +#+ +#+    +#+ +#+    +#+ +#+"
echo -e "\e[31m#+#        #+#        #+#     #+# #+#    #+# #+#   #+#+#      #+#       #+# #+#    #+# #+#    #+# #+#"
echo -e "\e[31m########## ########## ###     ### ###    ### ###    ####      ###       ###  ########  ###    ### ########## "

printf "\nHello, $USER. Today we're going to check some stuff based on your skillset. Are you ready? (y/n) / (!helpmelearn): "
read opt
if [[ $opt == "y" ]]; then
	echo "Okay great! Starting with a few questions!"
	echo -n "What's your age? "
	read age
fi

if [[ $opt == "n" ]]; then
	echo -n "Well.. Okay then fuck off.."
	exit 1
fi

if [[ $opt == "!helpmelearn" ]]; then
	printf "\nOh okay so you want to learn to hack alrighty i could help you with some stuff :) Here are some links to start with..
	[1]  https://docs.google.com/spreadsheets/d/12bT8APhWsL-P8mBtWCYu4MLftwG1cPmIL25AEBtXDno/edit?usp=sharing
	[2]  Here's a site where you can get a lot of E-books from: allitebook.com
	[3]  Being in a community is great to learn, get help and help others is great.. Except if you're in the InstaGram Wannabe DD0S H4x0R scr1pt K1dd13s community..
	[3+] Well then i'm here for you.. -> https://netsecfocus.slack.com	https://www.reddit.com/r/netsec/	https://www.reddit.com/r/blackhat/
	[4] There are also places to practise       -->	https://hackthebox.eu	https://vulnhub.com <--
	[4+] Please don't cheat in the invitation process of HTB if you do, you're a cunt :)\n"
	exit 1
fi	

if [[ $opt == "y" && $age -lt 18 ]]; then
	echo -n "Have you got experience already with penetration testing, programming etc.. etc..?(y/n) "
	read opt1
fi
	if [[ $opt1 == "y" && $age -lt 18 ]]; then
		printf "Oh Wow $age years old and already having expierience with penetration testing, that's awesome!\n"
		printf "Well this was all and hopefully you'll keep learning on the way ;)\n"

		else if [[ $age -gt 18 ]]; then
			echo -n "Oh okay so you're $age years old, do you have a job? (y/n)"
			read job
		fi

	if [[ $job == "y" ]]; then
		echo -n "Oh okay what do you do for a job? "
		read job
		printf "Oh that's cool i always wanted to do $job!\n"
	else if [[ $job != "y" && $job != "n" ]]; then
		printf "$job is a invalid option! Exiting..\n"
		exit
	else
		printf "You should be working already..\n"
		printf "Well this was all and get a job ya bastard!\n"
fi
fi
fi
