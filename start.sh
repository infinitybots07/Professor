if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/infinitybots07/Professor/blob/advance.git /Professor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Professor
fi
cd /Professor
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
