git add .
echo -n "what is this change for? "
read reply
git commit -m "$reply"
git push -u origin main
