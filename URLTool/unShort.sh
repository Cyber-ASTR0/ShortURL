echo ""
read -p "Enter Your Short URL: " input_variable
if long=$(curl -s -o /dev/null --head -w "%{url_effective}\n" -L "$input_variable"); then
echo "Original url -> $long"
else
echo "Sorry! Invalid url!"
fi
