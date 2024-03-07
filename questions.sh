#!/bin/bash

#Welcome the user to the Questions Script
echo "Welcome tothe Questionnaire v1.0"
sleep 1
echo "Created  by $(whoami) on $(date)"
sleep 1
echo "You will be promted to answer several questions."
sleep 1
echo "Let's begin!!"
sleep 1
echo "-------------Start Questions--------------------"

#Question 1
read -p "What is  your  favorite color? " color
sleep 1

#Question 2
read -p "What is your favorite activity? " activity
sleep 1

#Question 3
read -p "What is your favorite pizza topping? " pizza
sleep 1

echo "------------End of Questions--------------------"
sleep 1

echo "------------Formulating Results-----------------"
sleep 3

#Generate Results that use basic logic

#color
if [ $color = pink ]
then
	echo "Your favorite color is $color. Did you know that $color is the second most popular color in the world?"
elif  [ $color = blue  ]
then
	echo "Your favorite color is $color. Did you know that $color is the most popular color in the world?!"
elif [ $color = green ]
then
	echo  "Your favorite color is $color. Did you know that $color is made by mixing blue and yellow? :^)"
else
	echo "Your favorite color is $color. Nice!!"
fi
sleep 1

#activity
if [ $activity = basketball ]
then
	echo "Your favorite activity is $activity. Thats my favorite too!!"
elif [ $activity = drawing ]
then
	echo "Your favorite activity is $activity. I bet you're great at it too!"
else
	echo" Your favorite activity is $activity. I'd like to try that with you sometime."
fi
sleep 1

#pizza
if [ $pizza = cheese ]
then
	echo "Your favorite pizza topping is $pizza. Chheeeezzzzyyyy!"
elif [ $pizza = sausage ]
then
	echo "Your favorite pizza topping is $pizza. I like spicy $pizza."
elif [ $pizza = pineapple ]
then
	echo "Your favorite pizza topping is $pizza. Gross....."
else
	echo "Your favorite pizza topping is $pizza. Mmmmm!"
fi
sleep 1

echo "---------------Thanks for answering----------------"



