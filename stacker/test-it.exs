# Start the repl using
iex -S mix

# Have to run this line by line in the repl

{:ok, pid} = :gen_server.start_link(Stacker.Server, [], [])
# Start a server using the OTP toolkit.  start_link will start_link
# the server to the current repl session

:gen_server.cast(pid, {:push, 13})
# Push a message onto the server

:gen_server.call(pid, :pop)
# Get a message off the server


# Now we've added the supervisor, we start the service differently
Stacker.Supervisor.start_link([:hello])

# we now pop, this time using :stacker rather than the pid
:gen_server.call(:stacker, :pop)

# If you haven't removed the extra block from server.ex do so now and restart
# otherwise the server won't crash ...

# CRASH IT
:gen_server.call(:stacker, :pop)

# It crashed - oh noes!

# but wait ... she's back up again ... woo hoo

:gen_server.call(:stacker, :pop)
# returns :hello - the service started with the default stack

# The server wil try restarting 5 times in a 5 second span
# We can test this by sending a bunch of bad stuff to kill it...

:get_server.call(:stacker, :unknown)
# we can change these settings by passing arguments to the supervisor


# What happens if the supervisor goes down?
# Apps to the rescue.
# Now lets register the application with mix - goto: mix.exs

# With that done ... start the repl again

:gen_server.call(:stacker, :pop)

# will return :hello - \o/
