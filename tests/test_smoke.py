import pytest

from main import main


def test_main_prints_hello(capsys: pytest.CaptureFixture[str]) -> None:
    main()
    assert capsys.readouterr().out.strip() == "Hello from b4f!"
