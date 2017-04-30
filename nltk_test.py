import nltk
def value_detection(sentence):
    l = []
    select = ['JJ', 'NNP', 'CD']
    text = nltk.word_tokenize(sentence)
    tags = nltk.pos_tag(text)
    for i, j in tags:
            if(j in select):
                l.append(i)
    return l

print value_detection("tell me the name of actors where id greater than 10 and id less than 20 and actor name is harsh")