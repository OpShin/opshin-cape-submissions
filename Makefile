UVX_COMMAND=uvx --python 3.13 --from git+https://github.com/opshin/opshin@db8a9858d453ec625e2a3ce1be98130cf20abbb2
OPSHIN_COMMAND=$(UVX_COMMAND) opshin compile

all: factorial factorial_naive_recursion fibonacci fibonacci_naive_recursion

factorial:
	${OPSHIN_COMMAND} src/factorial/contract.py --lib factorial -fno-unwrap-input -fno-wrap-output -funique-variable-names -O3

factorial_naive_recursion:
	${OPSHIN_COMMAND} src/factorial_naive_recursion/contract.py --lib factorial -fno-unwrap-input -fno-wrap-output -funique-variable-names -O3

fibonacci:
	${OPSHIN_COMMAND} src/fibonacci/contract.py --lib fibonacci -fno-unwrap-input -fno-wrap-output -funique-variable-names -O3

fibonacci_naive_recursion:
	${OPSHIN_COMMAND} src/fibonacci_naive_recursion/contract.py --lib fibonacci -fno-unwrap-input -fno-wrap-output -funique-variable-names -O3