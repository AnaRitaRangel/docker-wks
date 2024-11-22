import streamlit as st

def hello_world():
    # Return the first message
    return "Hello, World!"

def deploy_message():
    # Return the second message
    return "**This is my second deploy, this one with Docker on Render and AWS**"

def main():
    # Display the first message
    st.write(hello_world())
    
    # Display the second message in bold and larger font
    st.markdown(f"<h2 style='font-size: 30px; font-weight: bold;'>{deploy_message()}</h2>", unsafe_allow_html=True)

if __name__ == "__main__":
    main()
