defmodule ShitBubbleSort do

  # FARK This has taken me 2 1/2 hours today, and I stil don't know why it doesn't work
  # It's a fucking bubble sort. Compsci 101 for morons.

  # TODO: alternative versions (after I have this working & have looked up a couple of others)
  # I keep thinking if only I could look at all this another way (or perhaps get more practice),
  # everything would go better. As if I could will myself to be something other than
  # what I am.

  # now I realise the Enum method can't work because it (of necessity) keeps the
  # order of the list the same. So a max item can't bubble along in the output list. It will
  # get stuck behind the input list's progression

  # comprehension with two generators in some way?
  # purely recursional?

  # I AM JUST NOT CLEARLY VISUALISING THE SEQUENCE, HOWEVER OFTEN
  # I PLUG IN CONCRETE ARGUMENTS

  # Though gettting closer
  # fundamentally we can't do a bubble sort functionally, because
  # the source must mutate. Also list ops reverses (because it takes from the front, but builds from the back), but that's ok as long as we mentally reverse all teh ops, and then reverse
  # the result
  # But we can't get around the fact that each time we swap, we need to do
    # the next comparison re-using the last index.

  def pass(l) do
    # []
    Enum.reduce(l, [], fn item, acc ->
      case acc do
        [] ->
          [item]

        [first | rest] ->
          if item < first do
            [first | [item | rest]]
          else
            [item | acc]
          end
      end
    end)
  end

  defp bsort_iter(l)  do
    IO.inspect(l, label: :L)
    g = pass(l)
    IO.inspect(g, label: :G)
    # case pass(g) do
    #   # terminates when a pass doesn't change input list
    #   m = ^l -> m
    #   m -> bsort_iter(m)
    # end
  end

  def bubble_sort(l) when is_list(l) do
    # l = Enum.reverse(l)
    bsort_iter(l)
  end
end
