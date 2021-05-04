@echo off
echo "�K�v�ȃf�B���N�g�����쐬���܂�"
mkdir logs
mkdir documents
mkdir fonts
echo "Docker Cloud����ŐV�ł̃C���[�W���_�E�����[�h���܂�"
docker pull ryorobo/rcj-rescue-scoring-japan:latest
echo "MongoDB�̃f�[�^�X�g���[�W���쐬���܂�"
docker volume create --name=mongodata
echo "�C���[�W���N�����܂�"
run.bat
