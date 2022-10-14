import pdb

def camelCase(word_components):
    """
    >>> camelCase(['apple', 'pie']) 
    'applePie'
    >>> camelCase(['APPLE', 'PIE'])
    'applePie'
    >>> camelCase(['crAzy', 'chEEse'])
    'crazyCheese'
    """
    word = word_components[0].lower()
    for component in word_components[1:]:
        word += component.lower().capitalize()
    return word

def splitByCase(s):
    """
    >>> splitByCase('applePie')
    ['apple', 'pie']
    >>> splitByCase('ApplePie')
    ['apple', 'pie']
    """
    word = ''
    word_components = []
    for letter in s:
        if letter.isupper() and word != '':
            word_components.append(word.lower())
            word = letter.lower()
        else:
            word += letter
    if letter.islower():
        word_components.append(word.lower())
    return word_components

def setCase(originalWord,desired_case='camel'):
    """
    Switches between camelCase, PascalCase, and snake_case.
    kebab-case is technically supported, but doesn't work with the vim keybinding
    because a vim word doesn't include '-' characters/
    >>> case('apple-pie_andCheese', 'camel')
    'applePieAndCheese'
    """
    word = originalWord.replace('-','_')
    split_words = word.split('_')
    all_word_components = []
    for word in split_words:
        word_components = splitByCase(word)
        all_word_components.extend(word_components)
    if desired_case.lower() == 'camel':
        return camelCase(all_word_components)
    else:
        return originalWord #gotta add compatibility later

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="process options")
    parser.add_argument('--case', dest='case')
    parser.add_argument('--word', dest='word')

    args = parser.parse_args()

    if args.case == None:
        args.case = 'camel'

    print(setCase(args.word, args.case))
