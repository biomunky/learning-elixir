defmodule Stacker do
    use Application.Behaviour

    # _type tells the callback how the vm should act
    # in the event of a crash - have to hit the doc 
    # to find out more (see Application.Behaviour)
    def start(_type, stack) do
        Stacker.Supervisor.start_link(stack)
    end

    # We won't bother creating the stop ...
    
end
