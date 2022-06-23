defmodule ProtobufDialyzerErrorTestRepo do
  @moduledoc """
  Documentation for `ProtobufDialyzerErrorTestRepo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ProtobufDialyzerErrorTestRepo.hello()
      :world

  """
  def hello do
    :world
  end

  alias Google.Protobuf.Timestamp

  @spec fine :: Timestamp.t()
  def fine do
    %Timestamp{seconds: 232_342, nanos: 232_342}
  end

  @spec not_fine :: Timestamp.t()
  def not_fine do
    Timestamp.new(seconds: 232_342, nanos: 232_342)
  end
end
