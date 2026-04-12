#!/bin/bash
# ============================================
# brain-sync — Sincronizacao automatica do vault fama-brain
# Rodado via cron a cada 5 minutos
# ============================================

set -e

VAULT="/root/fama-brain"
HOSTNAME_CUSTOM="$(hostname)"
LOCK_FILE="/tmp/brain-sync.lock"

exec 9>"$LOCK_FILE"
flock -n 9 || {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] brain-sync ja esta rodando, pulando esta execucao"
  exit 0
}

cd "$VAULT" || {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] ERRO: diretorio $VAULT nao existe"
  exit 1
}

TS="$(date '+%Y-%m-%d %H:%M:%S')"
echo "[$TS] --- Iniciando brain-sync em $HOSTNAME_CUSTOM ---"

echo "[$TS] Executando git pull..."
git pull --rebase --autostash origin main 2>&1

if [ -n "$(git status --porcelain)" ]; then
  echo "[$TS] Mudancas locais detectadas, commitando..."
  git add -A
  git commit -m "auto: sync $HOSTNAME_CUSTOM $(date '+%Y-%m-%d %H:%M:%S')" 2>&1
  echo "[$TS] Executando git push..."
  git push origin main 2>&1
  echo "[$TS] Push concluido"
else
  echo "[$TS] Nenhuma mudanca local, sync via pull apenas"
fi

echo "[$TS] --- brain-sync finalizado ---"