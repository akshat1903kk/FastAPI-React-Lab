.PHONY: dev-backend dev-frontend test prune

dev-backend:
	cd backend && source .venv/bin/activate && uvicorn app.main:app --reload --port 8000

dev-frontend:
	cd frontend && npm run dev

test:
	cd backend && source .venv/bin/activate && ruff check . && pytest

prune:
	docker image prune -f && docker builder prune -f
