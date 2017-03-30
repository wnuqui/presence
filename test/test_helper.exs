Code.require_file("test_case.exs", "test/support")

ExUnit.configure(
  formatters: [
    JUnitFormatter,
    ExUnit.CLIFormatter,
    ExUnitNotifier,
  ]
)

ExUnit.start()
