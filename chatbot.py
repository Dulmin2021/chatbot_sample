# Step 2: Define chatbot responses
responses = {
    "hi": "Hello! How can I help you today?",
    "hello": "Hi there! How can I assist you?",
    "how are you": "I'm just a bot, but I'm here to help you!",
    "what is your name": "I'm Axiom, a chatbot created to assist you.",
    "bye": "Goodbye! Have a great day!",
    "default": "I'm not sure how to respond to that."
}

# Step 3: Implement the chatbot logic
def get_response(user_input):
    # Convert the input to lowercase to make the matching case-insensitive
    user_input = user_input.lower()
    
    # Check if the user input matches any of the predefined responses
    for key in responses:
        if key in user_input:
            return responses[key]
    
    # Return a default response if no match is found
    return responses["default"]

# Step 4: Run the chatbot in a loop
def chatbot():
    print("Chatbot: Hello! Type 'bye' to exit.")
    while True:
        user_input = input("You: ")
        if user_input.lower() == "bye":
            print("Chatbot: Goodbye! Have a great day!")
            break
        response = get_response(user_input)
        print(f"Chatbot: {response}")

# Start the chatbot
if __name__ == "__main__":
    chatbot()
