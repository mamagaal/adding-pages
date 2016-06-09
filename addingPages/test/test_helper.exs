ExUnit.start

Mix.Task.run "ecto.create", ~w(-r AddingPages.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r AddingPages.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(AddingPages.Repo)

