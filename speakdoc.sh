#Install espeak



if hash espeak 2>/dev/null; then
        echo "[+]espeak installed"
else
        apt-get install espeak
fi


filename=$1

echo "Content Of The $filename File Start"

#content= cat <$filename

echo "Content Of The File End"

echo $(content= cat <$filename)
#set -x 
echo "[+]speak starting"

echo $(content= cat <$filename) | espeak -s 20 -g 1 -a 100 -p 80


echo "speak starting"

