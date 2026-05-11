  #!/bin/sh
  set -e
  echo "==> Pushing Prisma schema to Neon..."
  npx prisma db push --accept-data-loss
  echo "==> Starting ExcaliDash..."
  exec ./docker-entrypoint.sh node dist/index.js