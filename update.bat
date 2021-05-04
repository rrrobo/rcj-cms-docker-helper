@echo off
echo "Docker Cloudから最新版のイメージをダウンロードします"
docker pull ryorobo/rcj-rescue-scoring-japan
echo "古いコンテナを停止します"
docker stop rcj-scoring-japan
echo "古いコンテナを削除します"
docker rm rcj-scoring-japan
echo "新しいイメージで起動します"
run.bat