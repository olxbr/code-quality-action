# code-quality-action
This action allows you to run lint, test and test coverage described in your Makefile.

## Usage

```yaml
# .github/workflows/my-workflow.yml
jobs:
    my_job:
        ...
        steps:
            - uses: olxbr/code-quality-action@v1
            - ... other steps
```

## Prerequisites

### Makefile
Create a **Makefile** at the root of your project and add the `lint`, `test` and `coverage` commands.

Makefile example for code written in Python:
```makefile
lint:
    flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
    flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics

test:
    python -m unittest discover tests "test_*.py"

coverage:
    coverage run --source=. -m unittest discover tests "test_*.py"
```

