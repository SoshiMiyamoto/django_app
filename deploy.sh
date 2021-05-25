#!/bin/bash 

# プロジェクトフォルダに移動
cd ~/django_app &&

# Masterブランチからpull
git pull origin master

# DBのマイグレーション
python3 manage.py migrate

# サーバーのスタート
python3 manage.py runserver
