# ProtobufDialyzerErrorTestRepo

It seems dialyzer doesn't accept the type when using the `new` functions added by the lib.
```elixir
  alias Google.Protobuf.Timestamp

  @spec fine :: Timestamp.t()
  def fine do
    %Timestamp{seconds: 232_342, nanos: 232_342}
  end

  @spec not_fine :: Timestamp.t()
  def not_fine do
    Timestamp.new(seconds: 232_342, nanos: 232_342)
  end
```

To reproduce issue:

```
mix deps.get
mix dialyzer
```
