#!/bin/bash

# 가상환경 경로
VENV_PATH="/home/kopo30/venv"

# 파이썬 파일 경로
PYFILE="/home/kopo30/pywork/codeset/etl_ubuntu.py"

# 로그 저장 경로
LOGFILE="/home/kopo30/pywork/codeset/etl_run.log"

echo " [$(date)] run_etl.sh 실행 시작" >> "$LOGFILE"

# 가상환경 활성화 및 실행
source "$VENV_PATH/bin/activate"
echo " 가상환경 활성화됨" >> "$LOGFILE"

python "$PYFILE" >> "$LOGFILE" 2>&1
echo " 파이썬 실행 완료" >> "$LOGFILE"

deactivate
echo " 가상환경 비활성화됨" >> "$LOGFILE"

