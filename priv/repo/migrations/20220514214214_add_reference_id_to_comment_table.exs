defmodule Blog.Repo.Migrations.AddReferenceIdToCommentTable do
  use Ecto.Migration

  def change do
    alter table(:comments) do
      add :post_id, references(:posts, on_delete: :delete_all)
  end
    create index(:comments, [:post_id])

  end
end
