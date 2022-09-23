
.PHONY: lint
lint:
	poetry run isort .
	poetry run black . --check
	poetry run pflake8 .
	poetry run mypy --ignore-missing-imports .

.PHONY: lint-fix
lint-fix:
	poetry run isort .
	poetry run black .
	poetry run pflake8 .
	poetry run mypy --ignore-missing-imports .
