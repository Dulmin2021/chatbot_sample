# Define chatbot responses
responses = Dict(
    "hi" => "Hello mcn moko wenne?",
    "hello" => "Hi  machan udauwak ooneda?",
    "kohomada" => "Taama developing ban. Puluwan udauwak krannam",
    "what is your name", "Nama mokakda machan?" => "I'm Axiom, a chatbot created to assist you.",
    "bye" => "Goodbye! Have a great day!",
    "default" => "I'm not sure how to respond to that."
)

# Function to get the chatbot response
function get_response(user_input::String)
    # Convert the input to lowercase to make the matching case-insensitive
    user_input = lowercase(user_input)
    
    # Check if the user input matches any of the predefined responses
    for (key, value) in responses
        if occursin(key, user_input)
            return value
        end
    end
    
    # Return a default response if no match is found
    return responses["default"]
end

# Function to run the chatbot
function chatbot()
    println("Chatbot: Hello! Type 'bye' to exit.")
    while true
        print("You: ")
        user_input = readline()
        
        if lowercase(user_input) == "bye"
            println("Chatbot: Goodbye! Have a great day!")
            break
        end
        
        response = get_response(user_input)
        println("Chatbot: $response")
    end
end

# Start the chatbot
chatbot()
