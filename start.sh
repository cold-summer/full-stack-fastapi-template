#!/bin/bash

# 启动后端
echo "Starting backend..."
cd backend && uv run --python 3.12 fastapi dev app/main.py &

# 启动前端  
echo "Starting frontend..."
cd frontend && npm run dev &

echo ""
echo "✅ 服务已启动:"
echo "   后端: http://127.0.0.1:8000"
echo "   前端: http://localhost:5173"
echo ""
echo "按 Ctrl+C 停止所有服务"

wait
