def mutate_lst(lst, origin, dest):
    
    counter = 0
    
    for i in lst:
        if counter == origin:
            i = 0
            
        counter += 1

        
    counter = 0    
    for i in lst:
        if counter == dest:
            i = 1
            counter += 1
        return None



def mutate_tree(t):
    lable(t) = label(t) * label(t)
    if is_leaf(t):
        return None
    else:
        for b in branches(t):
            mutate_tree(b)
