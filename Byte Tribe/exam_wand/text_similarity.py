import nltk, string
from sklearn.feature_extraction.text import TfidfVectorizer

string1 = 'a little bird'
string2 = 'a little bird'


vectorizer = TfidfVectorizer()



def cosine_sim(text1, text2):
    tfidf = vectorizer.fit_transform([text1, text2])
    return ((tfidf * tfidf.T).A)[0,1]


d = cosine_sim(string1, string2)
t = cosine_sim('a little bird', 'a little bird chirps')
print (cosine_sim('a little bird', 'a big dog barks'))
percentage = (t*100)/1.0
print(percentage)