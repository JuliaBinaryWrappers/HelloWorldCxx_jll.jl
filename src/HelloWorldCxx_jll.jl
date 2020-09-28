# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HelloWorldCxx_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("HelloWorldCxx")
JLLWrappers.@generate_main_file("HelloWorldCxx", UUID("ae6da99f-25d9-581d-be6a-a93134b8bbac"))
end  # module HelloWorldCxx_jll
