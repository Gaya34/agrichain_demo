# Solution for Problem 1:
def find_substrings(s):
    res = []
    for i in range(len(s)):
        for j in range(i, len(s)):
            res.append(s[i:j+1])
    return res
    
def duplicate_truefalse(sub):
    set1 = set()
    for char in sub:
        if char in set1:
            return True
        set1.add(char)
    return False

s = 'abcabcbb'
res = find_substrings(s)
non_rep_substrings = []
length = 1
for i in res:
    if duplicate_truefalse(i) == False:
        non_rep_substrings.append(i)
        if len(i) > length:
            length = len(i)

print(length)
