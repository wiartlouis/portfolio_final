"""
Module: projet.py

Description: This module contains code for an application that analyzes population data.
"""

import matplotlib.pyplot as plt
import pandas as pd
import streamlit as st

skills_dict = {
    "TOUTOUI": ["Developpement on Watson Assistant", "Agile project management", "Team Work"],
    "Data visualization of TOUTOUI": ["Grafana", "SQL"],
    "Text Analytics on TOUTOUI comments": ["R","a voir"],
    "R shiny application":["R Shiny", "Data exploration", "Ggplot package"],
    "Netflix recommendation engine":["Team Work", "Association Rules", "R Shiny"],
    "Principal component analysis":["Data visualization", "Data preparation", "Analysis of results"],
    "Logistic regression":["Data preparation","Model building and tunning (GAM)", "Analysis of confusion matrix"],
    "Time series":["Prevision", "Sarima model"],
    "Streamlit application":["Streamlit", "Pandas", "Mathplotlib"],
    "Sentiment analysis":['Dictionnary','List'],
    "Study of the Toulouse real estate market":["Tableau Dekstop", "Data visualisation"],
    "Study of the French real estate market":["Tableau prep", "Tableau Dekstop", "Team Work"],
    "Recommender system":["Google Collab", "Pandas"]
    
    
}

def display_skills(project_name):
    skills = skills_dict.get(project_name, [])
    st.write(" | ".join(skills))

def display_welcome_message():
    """Displays a welcome message."""
    st.write(
        """
    This application presents various projects carried out by me during 
    my studies at TBS Education and during my work-study period at SNCF.
        """
    )

    st.write("""Projects are sorted by software used. You can use the navigation menu on the left.
    SNCF projects are listed separately, and for reasons of confidentiality will be less detailed. 
    Some projects are still in progress. They will be published on this site when they are finished.""")

    st.write("""This application was built using streamlit package on Python.""")

    st.write("""I would like to thank Adrien Pageot and Julien Iris, my tutors at SNCF. I'd also like to thank my classmates, 
    especially Valentin Le Bouder, Wellryne Pebrel and Anouchka Bettendorf, who helped me carry out 
    the various projects presented here. Last but not least, I'd like to thank my teachers who supported me during my MSC, 
    and in particular Serge Nyawa, the Master's program director.""")


def SNCF_projects():

    st.subheader("TOUTOUI")
    st.image('Toutoui.png', caption='This chatbot uses the Watson Assistant solution developed by IBM')
    st.write('''Toutoui is a chatbot that allows customers to submit requests. This chatbot uses the Watson Assistant solution developed by IBM. 
    I carried out numerous missions on this chat bot such as the development of new dialogues, the detection and resolution of anomalies and misunderstandings.
    I also participated in numerous recipe and production phases.''')
    st.markdown("[You can find TOUTOUI on this link](https://tout-oui.sncf.com/)")
    if st.button("See skills developped for TOUTOUI"):
        display_skills("TOUTOUI")
        
    st.markdown("---")
    

    st.subheader("Data visualization of TOUTOUI")
    st.write('During my work-study at SNCF I created a data visualization tool to monitor the chatbot on Grafana. Data visualization helped us improve it.')
    st.image('Grafana.png', caption='Here you can see a screen of the developement version')
    if st.button("See skills used for Data visualization of TOUTOUI"):
        display_skills("Data visualization of TOUTOUI")
    st.markdown("---")
    
    st.subheader("Text Analytics on TOUTOUI comments")
    st.write("In process")
    if st.button("Show skills used during Text Analytics on TOUTOUI comments"):
        display_skills("Text Analytics on TOUTOUI comments")


def R_projects():
    st.subheader("R shiny application")
    st.image('R_shiny_app.png', caption='We had to develop an application to perform an exploratory analysis.')
    st.markdown("[You can find the application on this link](https://tjcj5d-louis-wiart.shinyapps.io/Projet_waze_2/?fbclid=IwAR1C16-mjS9nsr_GtoxEFWC6Xgc1bVpyZiRVmvKhC_fXHVnVm1IeHkN8ri8)")
    if st.button("See skills developped for R shiny application"):
        display_skills("R shiny application")

    st.markdown("---")
        
    st.subheader("Netflix recommendation engine")
    st.write("Context : As members of the Netflix team of data scientists,  we wanted to develop a new movie recommendation engine for our clients.")
    st.markdown("[You can find more details on this project here](https://docs.google.com/presentation/d/1txp7y60djsXHLvO841Tw-ho5OkH3mQTyoMXlHasyqiE/edit?usp=sharing)")
    if st.button("See skills used during the build of our recommendation engine"):
        display_skills("Netflix recommendation engine")

    st.markdown("---")
    
    st.subheader("Principal component analysis")
    st.write("""The NGO we represent has just completed a major fund-raising campaign. The question now is where to invest these funds. 
    To do this, we need to draw up a comparative map of living standards in different countries.""")
    st.markdown("[You can find details of the project here](https://drive.google.com/file/d/1tFZZGe6QVbv0oZww58Br21PbIySR24yx/view)")
    if st.button("See skills developped during our Principal component analysis"):
        display_skills("Principal component analysis")

    st.markdown("---")

    st.subheader("Logistic regression")
    st.write("The idea here is to predict if an employee is satisfied by his job according his profile, the company and his work. This model will allow us to identify which variables are important for employee satisfaction.")
    st.markdown("[You can find details of the project here](https://drive.google.com/file/d/1QWWlCDQfnLvQPSQhoN-la6Bgowlqw18C/view?usp=sharing)")
    if st.button("See skills developped for Logistic regression"):
        display_skills("Logistic regression")

    st.markdown("---")

    st.subheader("Time series")
    st.write("The aim of this project was to model passenger numbers at Oslo airport using a Time Series model.")
    st.image("Time_series.png")
    st.markdown("[You can find details of the project here](https://drive.google.com/file/d/1wbi8jeqA-CYLjllapJ-6uvMKMJmH-1YV/view?usp=sharing)")
    if st.button("See skills developped for Time series"):
        display_skills("Time series")

def Python_projects():
    
    st.subheader("Streamlit application")
    st.write("We had to create an application in order to carry out an exploratory analysis.")
    st.image('streamlit_app.png')
    st.write("I took inspiration from this application to build my portfolio.")
    st.markdown("[You can find application here](https://nyhkjn557xszzwvdhrgdx8.streamlit.app/)")
    if st.button("See skills developped for Streamlit application"):
        display_skills("Streamlit application")

    st.markdown("---")

    st.subheader("Sentiment analysis on Trump's tweet")
    st.write("""The project consisted of carrying out a sentiment analysis of Donald Trump's tweets. 
    My friend Wellryne and I wrote fourteen python programs: data cleaning, sentiment analysis, search for the most frequent words and tagged users in his tweets. 
    There were 14 questions to answer, which we wrote at the top of each program!""")
    st.markdown("[You can find more details on this project here](https://docs.google.com/presentation/d/1vC4I8phccOqd1jw_xrUl6UhDlj7NV4O8/edit#slide=id.p1)")
    if st.button("See skills developped for Sentiment analysis"):
        display_skills("Sentiment analysis")

    st.markdown("---")

    st.subheader("Recommender system")
    st.write("""For this project, we had to create a recommendation system based on popularity. To do this, we used a youtube database of songs. Here are the results:""")
    st.image('Recommendation.png')
    st.markdown("[You can find more details on this project here](https://drive.google.com/file/d/1H53onaI7GmUBk7PSxpZUzk4PRzxZnaxo/view)")
    if st.button("See skills developped for Recommender System"):
        display_skills("Recommender system")


def Tableau_projects():

    st.subheader('Study of the Toulouse real estate market')
    st.write('''The objective of this project was to study the Toulouse real estate market. So, as a consultant 
    to a real estate company, we created graphs and maps with Tableau to show the connections between features, prices and sales volumes.''')
    st.image('Tableau.png')
    st.markdown("[You can find more details on this project here](https://docs.google.com/presentation/d/1MiJ6_ECovE9Q_Rz_DJuYJqpz62CsHYNF/edit#slide=id.p2)")
    if st.button("See skills developped for study of the Toulouse real estate market"):
        display_skills("Study of the Toulouse real estate market")

    st.markdown("---")

    st.subheader('Study of the French real estate market')
    st.write('''The objective of this project was to study the French real estate market in 9 cities. So, as a consultant 
    to a real estate company, we created graphs and maps with Tableau to show the connections between features, prices and sales volumes.
    We also had to prepare our data on Tableau prep.''')
    st.image('Tableau_2.png')
    st.markdown("[You can find more details on this project here](https://drive.google.com/file/d/1k035T3GaEO7JTq5OkOMY8K94EkKSPbzs/view?usp=sharing)")
    st.markdown("[You can find our story in Tableau on this link](https://docs.google.com/presentation/d/1KsqoMYa9fPq-Itivab_qN1OB04OWIA4eSlCWJ6j4cMw/edit?usp=sharing)")
    if st.button("See skills developped for study of the French real estate market"):
        display_skills("Study of the French real estate market")

def Spark():
    st.subheader('In process')

def SQL():
    st.subheader('In process')
    
def master_dissertation():

    st.subheader('In process')

def About_me():
    st.write("""Hello, my name is Louis Wiart and I'm 23 years old. After my scientific baccalaureate, I did a preparatory class for business schools, and at the end of these two years I was able to join TBS Education.
During my studies, I was lucky enough to spend a semester abroad in Barcelona and to do an 18-month work-study placement at the SNCF. For my last year,I specialised in data science and artificial intelligence because I love mathematics.""")

    st.write("""Aside from work, I'm passionate about sport and sporting events. Whenever a major sporting event takes place in France, I do everything I can to be part of it. I also like to go beyond my limits thanks to sport. 
    For example, I ran the Paris Marathon 2023 and every year I go trekking with my friends. Consequently, I'm very interested in data science in the world of sport.""")

    st.write("""You can fin more details on me on my CV.""")
    
def run_application():
    """Main function of the application."""
    st.title("Louis Wiart's portfolio")
    st.sidebar.title("Navigation")

    menu_action = st.sidebar.selectbox(
        "Choose a menu", ['Home', 'SNCF projects', 'R projects', 'Python projects', 'Tableau projects', 'Spark','SQL', 'Master dissertation', 'About me'])

    if menu_action == 'Home':
        st.header(menu_action)
        st.markdown('---')
        display_welcome_message()
    elif menu_action == 'SNCF projects':
        st.header(menu_action)
        st.markdown('---')
        SNCF_projects()
    elif menu_action == 'R projects':
        st.header(menu_action)
        st.markdown('---')
        R_projects()
    elif menu_action == 'Python projects':
        st.header(menu_action)
        st.markdown('---')
        Python_projects()
    elif menu_action == 'Tableau projects':
        st.header(menu_action)
        st.markdown('---')
        Tableau_projects()
    elif menu_action == 'Master dissertation':
        st.header(menu_action)
        st.markdown('---')
        master_dissertation()
    elif menu_action == 'SQL':
        st.header(menu_action)
        st.markdown('---')
        SQL()
    elif menu_action == 'Spark':
        st.header(menu_action)
        st.markdown('---')
        Spark()
    elif menu_action == 'About me':
        st.header(menu_action)
        st.markdown('---')
        About_me()
    else:
        st.write('Error: selection invalid')


if __name__ == '__main__':
    run_application()

    # Ligne de séparation
    st.markdown('---')

    # Affichage des informations de contact centrées avec du CSS
    st.markdown(
        """
        <style>
            .contact-links {
                display: flex;
                justify-content: center;
                margin-top: 10px;
            }
            .contact-links a {
                margin: 0 10px;
            }
        </style>
        <div class="contact-links">
            <a href="mailto:l.wiart@tbs-education.org">wiart.louists2@gmail.com</a>
            <span>|</span>
            <a href="https://www.linkedin.com/in/louis-wiart-55b006206/">LinkedIn Profile</a>
            <span>|</span>
            <a href="https://drive.google.com/file/d/15PKa5vF2_psO0lWtFwlwblHbjTALDMg9/view?usp=sharing">CV</a>
        </div>
        """,
        unsafe_allow_html=True
    )
