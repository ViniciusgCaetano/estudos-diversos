import streamlit as st
import backend.backend as bk

st.title("Encurtador de Links :link:")
long_link = st.text_input(label="Insira seu link aqui")
if st.button("Gerar link encurtado"):
    st.write(bk.short_link(long_link))

short_link = st.text_input(label="Inserir link encurtado")
if st.button("Abrir link encurtado"):
    bk.open(short_link)
