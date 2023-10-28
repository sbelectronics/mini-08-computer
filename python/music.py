mary = "GFE-FGGGp8FFF4GB-B-4GFE-FGGGGFFGFe-"
willtell = "L 16o3DDDp 16DDDp 16DDG8AB8DDDp 16DDDp 16BBA8G-8D8DDp 16DDDp 16DDG8A8B8p 16Go4D4p8o3G8B8G8"
america = "GG4.E8EGG4.D8DEFGABG2.GG4.E8EGG4.D8 Do4DC + DEo3Ao4D2.o3Go4E4.E8DCC4.o3B8Bo4CDo3BAGo4C2."
silent = "T65mIF8.mnG16F8D4.mlF8.mnG16F8D4.o4CC8o3A4.B-B-8F4.GG8mlB-8.mnA16G8mlF8.mnG1 6F8D4."

def translate(s):
  notes=[]
  lengths=[]
  isL=False
  isOct=False
  oct=4
  baseLen=8
  for c in s:
    c=c.upper()
    if (c in ['A','B','C','D','E','F','G']):
      notes.append("_%s%d" % (c,oct))
      lengths.append(baseLen)
      isL=False
      isOct=False
    elif (c=='L'):
      isL=True
      isOct=False
    elif (c=='O'):
      isOct=True
      isL=False
    elif c=='-':
      notes[-1] = notes[-1] + "F"
    elif c=='+':
      notes[-1] = notes[-1] + "S"
    elif c in ['0','1','2','3','4','5','6','7','8','9']:
      if c=='1':
        l = 16;
      elif c=='6':
        l = 0
      else:
        l = int(c)
      if (l>0):
        if isL:
          baseLen = l
        elif isOct:
          oct = l
        else:
          lengths[-1] = l
    elif c in ['P']:
      notes.append("_SS")
      lengths.append(8)
      isL=False
      isOct=False
    elif c in [' ']:
      pass
    else:
      print("unknown char %c" % c)

  res = []
  for i in range(0, len(notes)):
    if (notes[i]=="_SS"):
      res.append("PAUSE%d" % lengths[i])
    else:
      res.append(notes[i])
      res.append("NOTE%d" % lengths[i])
    
  return " ".join(res)

print("mary:")
print(translate(mary))
print("willtell:")
print(translate(willtell))
print("america:")
print(translate(america))
