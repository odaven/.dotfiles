echo -ne "
[.dotfiles] System?
1) MacOs
2) Raspberry-pi
0) Exit
Choose an option: "
read a
case $a in
  1) source macos/install.sh ;;
  2) source raspberry-pi/install.sh ;;
  0) echo "Bye" ;;
  *) echo "Wrong option." ;;
esac
echo ""
