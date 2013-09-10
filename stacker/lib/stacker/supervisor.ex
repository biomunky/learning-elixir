defmodule Stacker.Supervisor do
    use Supervisor.Behaviour

    # A convenience method to start the supervisor
    def start_link(stack) do
        :supervisor.start_link(__MODULE__, stack)
    end

    # The callback invoked when the supervisor starts
    # It's the only method we HAVE to implement.
    # It must return a 'supervise' specification.
    def init(stack) do
        # We only have to supervise one worker (Stacker.Server)
        children = [worker(Stacker.Server, [stack])]
        # Stacker.Server will be supervised using the :one_for_one stratergy
        supervise children, strategy: :one_for_one
    end

end