#
# Elixir doesn't appear to have a date type w/o using a dependency
#

defrecord Artist, name: "", formed: ""
defrecord Album, title: "", artist: Artist

defmodule Tunes do

  @moduledoc """
   A mostly pointless module for playing with Mnesia.
  """

  @vsn 0.01

  @doc """
   creats a mnesia schema
   then starts mnesia
   then creates a table, two bands and two albums
  """

  def setup do
    :mnesia.create_schema([node()])
    :mnesia.start()
    :mnesia.create_table(Album, [{:attributes,
                                  Dict.keys(Album.__record__(:fields))}]
                        )

    feeder = Artist.new(name: :feeder, formed: "1991")
    qotsa = Artist.new(name: :queens_of_the_stone_age, formed: "1996")

    songs_for_the_deaf = Album.new(title: "Songs for the Deaf",
                                   artist: qotsa)


    lullabies_to_paralyze = Album.new(title: "lullabies to paralyse",
                                      artist: qotsa)

    polythene = Album.new(title: "Polythene",
                          artist: feeder)


    yesterday = Album.new(title: "Yesterday Went Too Soon",
                          artist: feeder)


    add_records = fn ->
                       :mnesia.write(songs_for_the_deaf)
                       :mnesia.write(polythene)
                       :mnesia.write(yesterday)
                       :mnesia.write(lullabies_to_paralyze)
                  end

    :mnesia.transaction(add_records)
  end


  @doc """
   Get a record from the mnesia table.

   Example

     Tunes.get_album("Polythene")
  """
  def get_album(album_name) do
    :mnesia.transaction(fn() -> :mnesia.read(Album, album_name) end)
  end

end
