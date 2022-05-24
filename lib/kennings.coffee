

PARSER = require "cson-parser"
FS = require 'fs'
PATH = require "path"


module.exports =
  initialize: (state) ->
    ## start of section to replace from 'init.coffee'
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°c°a", =>
      @insertIt("alt-ctrl-c°c°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°c°c", =>
      @insertIt("alt-ctrl-c°c°c")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°c°d", =>
      @insertIt("alt-ctrl-c°c°d")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°c°l", =>
      @insertIt("alt-ctrl-c°c°l")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°c°q", =>
      @insertIt("alt-ctrl-c°c°q")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°c°r", =>
      @insertIt("alt-ctrl-c°c°r")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°d°c", =>
      @insertIt("alt-ctrl-c°d°c")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°e", =>
      @insertIt("alt-ctrl-c°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°g", =>
      @insertIt("alt-ctrl-c°g")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°l", =>
      @insertIt("alt-ctrl-c°l")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°n°c", =>
      @insertIt("alt-ctrl-c°n°c")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°n°l", =>
      @insertIt("alt-ctrl-c°n°l")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°p°o", =>
      @insertIt("alt-ctrl-c°p°o")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°p°s", =>
      @insertIt("alt-ctrl-c°p°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°q°d", =>
      @insertIt("alt-ctrl-c°q°d")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°r°o", =>
      @insertIt("alt-ctrl-c°r°o")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°r°s", =>
      @insertIt("alt-ctrl-c°r°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°e", =>
      @insertIt("alt-ctrl-c°t°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°g", =>
      @insertIt("alt-ctrl-c°t°g")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°l", =>
      @insertIt("alt-ctrl-c°t°l")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°p°o", =>
      @insertIt("alt-ctrl-c°t°p°o")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°p°s", =>
      @insertIt("alt-ctrl-c°t°p°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°r°o", =>
      @insertIt("alt-ctrl-c°t°r°o")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°r°s", =>
      @insertIt("alt-ctrl-c°t°r°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°w°a", =>
      @insertIt("alt-ctrl-c°t°w°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°w°b", =>
      @insertIt("alt-ctrl-c°t°w°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°t°w°s", =>
      @insertIt("alt-ctrl-c°t°w°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°w°a", =>
      @insertIt("alt-ctrl-c°w°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°w°b", =>
      @insertIt("alt-ctrl-c°w°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°w°s", =>
      @insertIt("alt-ctrl-c°w°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°z°p", =>
      @insertIt("alt-ctrl-c°z°p")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-c°z°t", =>
      @insertIt("alt-ctrl-c°z°t")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-d°c°c", =>
      @insertIt("alt-ctrl-d°c°c")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-d°c°f", =>
      @insertIt("alt-ctrl-d°c°f")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-d°i°e", =>
      @insertIt("alt-ctrl-d°i°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-d°i°i", =>
      @insertIt("alt-ctrl-d°i°i")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-d°i°s", =>
      @insertIt("alt-ctrl-d°i°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-d°n°f", =>
      @insertIt("alt-ctrl-d°n°f")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°1°b", =>
      @insertIt("alt-ctrl-f°1°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°1°e", =>
      @insertIt("alt-ctrl-f°1°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°1°s", =>
      @insertIt("alt-ctrl-f°1°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°2°b", =>
      @insertIt("alt-ctrl-f°2°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°2°e", =>
      @insertIt("alt-ctrl-f°2°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°2°s", =>
      @insertIt("alt-ctrl-f°2°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°3°b", =>
      @insertIt("alt-ctrl-f°3°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°3°e", =>
      @insertIt("alt-ctrl-f°3°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°3°s", =>
      @insertIt("alt-ctrl-f°3°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°0", =>
      @insertIt("alt-ctrl-f°r°0")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°c°a", =>
      @insertIt("alt-ctrl-f°r°c°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°c°h", =>
      @insertIt("alt-ctrl-f°r°c°h")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°c°o", =>
      @insertIt("alt-ctrl-f°r°c°o")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°c°w", =>
      @insertIt("alt-ctrl-f°r°c°w")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°g°d", =>
      @insertIt("alt-ctrl-f°r°g°d")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°g°g", =>
      @insertIt("alt-ctrl-f°r°g°g")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°g°t", =>
      @insertIt("alt-ctrl-f°r°g°t")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°r°m°l", =>
      @insertIt("alt-ctrl-f°r°m°l")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°s°b", =>
      @insertIt("alt-ctrl-f°s°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°s°h", =>
      @insertIt("alt-ctrl-f°s°h")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°s°i", =>
      @insertIt("alt-ctrl-f°s°i")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°s°o°h", =>
      @insertIt("alt-ctrl-f°s°o°h")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-f°s°o°o", =>
      @insertIt("alt-ctrl-f°s°o°o")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°0°a", =>
      @insertIt("alt-ctrl-m°0°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°0°b", =>
      @insertIt("alt-ctrl-m°0°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°0°e", =>
      @insertIt("alt-ctrl-m°0°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°0°m", =>
      @insertIt("alt-ctrl-m°0°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°0°s", =>
      @insertIt("alt-ctrl-m°0°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°0°x", =>
      @insertIt("alt-ctrl-m°0°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°1°a", =>
      @insertIt("alt-ctrl-m°1°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°1°b", =>
      @insertIt("alt-ctrl-m°1°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°1°e", =>
      @insertIt("alt-ctrl-m°1°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°1°m", =>
      @insertIt("alt-ctrl-m°1°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°1°s", =>
      @insertIt("alt-ctrl-m°1°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°1°x", =>
      @insertIt("alt-ctrl-m°1°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°2°a", =>
      @insertIt("alt-ctrl-m°2°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°2°b", =>
      @insertIt("alt-ctrl-m°2°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°2°e", =>
      @insertIt("alt-ctrl-m°2°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°2°m", =>
      @insertIt("alt-ctrl-m°2°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°2°s", =>
      @insertIt("alt-ctrl-m°2°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°2°x", =>
      @insertIt("alt-ctrl-m°2°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°3°a", =>
      @insertIt("alt-ctrl-m°3°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°3°b", =>
      @insertIt("alt-ctrl-m°3°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°3°e", =>
      @insertIt("alt-ctrl-m°3°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°3°m", =>
      @insertIt("alt-ctrl-m°3°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°3°s", =>
      @insertIt("alt-ctrl-m°3°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°3°x", =>
      @insertIt("alt-ctrl-m°3°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°4°a", =>
      @insertIt("alt-ctrl-m°4°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°4°b", =>
      @insertIt("alt-ctrl-m°4°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°4°e", =>
      @insertIt("alt-ctrl-m°4°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°4°m", =>
      @insertIt("alt-ctrl-m°4°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°4°s", =>
      @insertIt("alt-ctrl-m°4°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°4°x", =>
      @insertIt("alt-ctrl-m°4°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°5°a", =>
      @insertIt("alt-ctrl-m°5°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°5°b", =>
      @insertIt("alt-ctrl-m°5°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°5°e", =>
      @insertIt("alt-ctrl-m°5°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°5°m", =>
      @insertIt("alt-ctrl-m°5°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°5°s", =>
      @insertIt("alt-ctrl-m°5°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°5°x", =>
      @insertIt("alt-ctrl-m°5°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°6°a", =>
      @insertIt("alt-ctrl-m°6°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°6°b", =>
      @insertIt("alt-ctrl-m°6°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°6°e", =>
      @insertIt("alt-ctrl-m°6°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°6°m", =>
      @insertIt("alt-ctrl-m°6°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°6°s", =>
      @insertIt("alt-ctrl-m°6°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°6°x", =>
      @insertIt("alt-ctrl-m°6°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°7°a", =>
      @insertIt("alt-ctrl-m°7°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°7°b", =>
      @insertIt("alt-ctrl-m°7°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°7°e", =>
      @insertIt("alt-ctrl-m°7°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°7°m", =>
      @insertIt("alt-ctrl-m°7°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°7°s", =>
      @insertIt("alt-ctrl-m°7°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°7°x", =>
      @insertIt("alt-ctrl-m°7°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°8°a", =>
      @insertIt("alt-ctrl-m°8°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°8°b", =>
      @insertIt("alt-ctrl-m°8°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°8°e", =>
      @insertIt("alt-ctrl-m°8°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°8°m", =>
      @insertIt("alt-ctrl-m°8°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°8°s", =>
      @insertIt("alt-ctrl-m°8°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°8°x", =>
      @insertIt("alt-ctrl-m°8°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°9°a", =>
      @insertIt("alt-ctrl-m°9°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°9°b", =>
      @insertIt("alt-ctrl-m°9°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°9°e", =>
      @insertIt("alt-ctrl-m°9°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°9°m", =>
      @insertIt("alt-ctrl-m°9°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°9°s", =>
      @insertIt("alt-ctrl-m°9°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°9°x", =>
      @insertIt("alt-ctrl-m°9°x")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°b°c", =>
      @insertIt("alt-ctrl-m°b°c")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°b°n", =>
      @insertIt("alt-ctrl-m°b°n")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°c°b", =>
      @insertIt("alt-ctrl-m°c°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°c°c", =>
      @insertIt("alt-ctrl-m°c°c")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°c°t", =>
      @insertIt("alt-ctrl-m°c°t")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°i°l", =>
      @insertIt("alt-ctrl-m°i°l")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°n°a", =>
      @insertIt("alt-ctrl-m°n°a")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°n°b", =>
      @insertIt("alt-ctrl-m°n°b")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°n°d", =>
      @insertIt("alt-ctrl-m°n°d")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°n°e", =>
      @insertIt("alt-ctrl-m°n°e")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°n°m", =>
      @insertIt("alt-ctrl-m°n°m")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-m°n°s", =>
      @insertIt("alt-ctrl-m°n°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°e°d", =>
      @insertIt("alt-ctrl-p°e°d")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°e°l", =>
      @insertIt("alt-ctrl-p°e°l")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°e°p", =>
      @insertIt("alt-ctrl-p°e°p")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°e°q", =>
      @insertIt("alt-ctrl-p°e°q")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°e°s", =>
      @insertIt("alt-ctrl-p°e°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°e°t", =>
      @insertIt("alt-ctrl-p°e°t")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°r°d", =>
      @insertIt("alt-ctrl-p°r°d")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°r°l", =>
      @insertIt("alt-ctrl-p°r°l")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°r°s", =>
      @insertIt("alt-ctrl-p°r°s")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-ctrl-p°r°t", =>
      @insertIt("alt-ctrl-p°r°t")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-shift-s°p", =>
      @insertIt("alt-shift-s°p")
    atom.commands.add "atom-workspace", "kennings:insertIt-alt-shift-s°z", =>
      @insertIt("alt-shift-s°z")
    ## End of section to replace from 'init.coffee'

  insertIt: (KEYS) ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> doInsertIt(item, KEYS))


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * textFileRead
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
textFileRead = (url) ->
  data = FS.readFileSync url, "utf8"
  return data


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * csonFileRead
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
csonFileRead = (url) ->
  data = FS.readFileSync url, "utf8"
  dataToRtn = PARSER.parse(data)
  return dataToRtn


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * replaceRepeater
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
replaceRepeater = (haystack, softTabs, tabLength) ->
  myPosn1 = haystack.indexOf("%R%", haystack)
  if myPosn1 == -1
    return haystack
  while myPosn1 > -1
    myPosn2 = haystack.indexOf("°", haystack)
    myPosn3 = haystack.indexOf("≈", haystack)
    myPosn4 = haystack.indexOf("؟", haystack)
    myStr1 = haystack.substr(0, myPosn1)
    myStr2 = haystack.substr(myPosn2 + 1, myPosn3 - myPosn2 - 1)
    myStr3 = haystack.substr(myPosn3 + 1, myPosn4 - myPosn3 - 1)
    myRepeat = parseInt(myStr3, 10)
    myStr4 = haystack.substr(myPosn4 + 1)
    haystack = myStr1 + myStr2.repeat(myRepeat) + myStr4
    myPosn1 = haystack.indexOf("%R%", haystack)
  return haystack


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * doTab
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
doTab = (tabLength, softTabs, numberOfTabs) ->
  if softTabs == false
    return "\t".repeat(numberOfTabs)
  if softTabs == true
    return " ".repeat(tabLength * numberOfTabs)


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * stringReplaceAll
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
stringReplaceAll = (needle, haystack, softTabs, tabLength, indent, selectedText, fixedText) ->
  myPosn = haystack.indexOf(needle, haystack)
  while myPosn > -1
    switch needle
      when "%C%"
        haystack = haystack
      when "%CR%"
        haystack = haystack.replace(needle, "\r\n")
      when "%FT%"
        haystack = haystack.replace(needle, fixedText)
      when "%N%"
        haystack = haystack.replace(needle, "\n#{doTab(tabLength, softTabs, indent)}")
      when "%ST%"
        haystack = haystack.replace(needle, selectedText)
      when "%T%"
        haystack = haystack.replace(needle, doTab(tabLength, softTabs, 1))
      when "%Q%"
        haystack = haystack.replace(needle, "\"")
      else
        haystack = haystack
    myPosn = haystack.indexOf(needle, haystack)
  return haystack


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * stringReplaceFile
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
stringReplaceFile = (newText, moduleDir, selectionFileDir, projectDir) ->
  filenameStart = newText.indexOf("%TF%▷", newText)
  filenameEnd = newText.indexOf("◁", newText)
  filename = newText.substr(filenameStart + 5, filenameEnd - 1)
  leftPiece = newText.substr(0, filenameStart - 1)
  rightPiece = newText.substr(filenameEnd + 1, -1)
  try
    tempFilename = selectionFileDir.concat(filename)
    middlePiece = textFileRead(tempFilename)
  catch error
    try
      tempFilename = projectDir.concat(filename)
      middlePiece = textFileRead(tempFilename)
    catch error
      try
        tempFilename = moduleDir.concat(filename)
        middlePiece = textFileRead(tempFilename)
      catch error
        middlePiece = ""
  myNewText = leftPiece.concat(middlePiece)
  myNewText = myNewText.concat(rightPiece)
  return myNewText


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * wrap selection
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
doInsertIt = (selection, KEYS) ->
  modulePath = PATH.parse(atom.packages.loadedPackages.kennings.mainModulePath)
  moduleDir = modulePath.dir
  moduleDir = moduleDir.substr(0, moduleDir.lastIndexOf("/", moduleDir))
  selectionFile = PATH.parse(selection.editor.fileWatcher.currPath)
  selectionFileDir = selectionFile.dir
  selectionFileExt = selectionFile.ext
  projectDir = atom.project.rootDirectories[0].realPath

  moduleConfigFilename = moduleDir.concat("/kennings.cson")
  selectionConfigFilename = selectionFileDir.concat("/kennings.cson")
  projectConfigFilename = projectDir.concat("/.atom/kennings.cson")

  myConfig = csonFileRead(moduleConfigFilename)
  myGrammar = selection.editor.languageMode.grammar.scopeName
  # *** NOT DIAGNOSTIC ***  %_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_
  console.log "selection grammer is #{myGrammar}"
  try
    LowerCaseFixedText = myConfig[myGrammar]["LowerCaseFixedText"]
    LinkifyFixedText = myConfig[myGrammar]["LinkifyFixedText"]
    UpperCaseSelectedText = myConfig[myGrammar]["UpperCaseSelectedText"]
  catch error
    try
      LowerCaseFixedText = myConfig["*"]["LowerCaseFixedText"]
      LinkifyFixedText = myConfig["*"]["LinkifyFixedText"]
      UpperCaseSelectedText = myConfig["*"]["UpperCaseSelectedText"]
    catch error
      LowerCaseFixedText = "y"
      LinkifyFixedText = "y"
      UpperCaseSelectedText = "n"

  try
    myConfigSelection = csonFileRead(selectionConfigFilename)
    try
      LowerCaseFixedText = myConfigSelection[myGrammar]["LowerCaseFixedText"]
      LinkifyFixedText = myConfigSelection[myGrammar]["LinkifyFixedText"]
      UpperCaseSelectedText = myConfigSelection[myGrammar]["UpperCaseSelectedText"]
    catch error
      try
        LowerCaseFixedText = myConfigSelection["*"]["LowerCaseFixedText"]
        LinkifyFixedText = myConfigSelection["*"]["LinkifyFixedText"]
        UpperCaseSelectedText = myConfigSelection["*"]["UpperCaseSelectedText"]
      catch error
        LowerCaseFixedText = "y"
        LinkifyFixedText = "y"
        UpperCaseSelectedText = "n"
  catch error
    try
      myConfigProject = csonFileRead(projectConfigFilename)
      try
        LowerCaseFixedText = myConfigProject[myGrammar]["LowerCaseFixedText"]
        LinkifyFixedText = myConfigProject[myGrammar]["LinkifyFixedText"]
        UpperCaseSelectedText = myConfigProject[myGrammar]["UpperCaseSelectedText"]
      catch error
        try
          LowerCaseFixedText = myConfigProject["*"]["LowerCaseFixedText"]
          LinkifyFixedText = myConfigProject["*"]["LinkifyFixedText"]
          UpperCaseSelectedText = myConfigProject["*"]["UpperCaseSelectedText"]
        catch error
          LowerCaseFixedText = "y"
          LinkifyFixedText = "y"
          UpperCaseSelectedText = "n"
    catch error
      console.log "defaulting to global config for '#{selectionFile}'"

  myTabLength = atom.config.get("editor.tabLength")
  mySoftTabs = selection.editor.softTabs
  myStartColumn = selection.getScreenRange().start.column
  myIndent = (myStartColumn / myTabLength)

  selectedText = selection.getText()
  if selectedText.charAt(selectedText.length - 1) == "\n"
    selectedText = selectedText.substr(0, selectedText.length - 1).concat("\n#{doTab(myTabLength, mySoftTabs, myIndent)}")
  fixedText = selectedText

  if LinkifyFixedText == "y"
    fixedText = fixedText.replace(/[\s+\t+]/g, "-")
    fixedText = fixedText.replace(/[^A-Za-z0-9\-]/g, "")
  if LowerCaseFixedText == "y"
    fixedText = fixedText.toLowerCase()
  if UpperCaseSelectedText == "y"
    selectedText = selectedText.toUpperCase()

  try
    newText = myConfigSelection[myGrammar]["Templates"][KEYS]["StringToInsert"]
    console.log "Using selection '#{myGrammar}' '#{KEYS}'"
  catch error
    try
      newText = myConfigSelection["*"]["Templates"][KEYS]["StringToInsert"]
      console.log "Using selection '*' '#{KEYS}'"
    catch error
      try
        newText = myConfigProject[myGrammar]["Templates"][KEYS]["StringToInsert"]
        console.log "Using project '#{myGrammar}' '#{KEYS}'"
      catch error
        try
          newText = myConfigProject["*"]["Templates"][KEYS]["StringToInsert"]
          console.log "Using project '*' '#{KEYS}'"
        catch error
          try
            newText = myConfig[myGrammar]["Templates"][KEYS]["StringToInsert"]
            console.log "Using global '#{myGrammar}' '#{KEYS}'"
          catch error
            try
              newText = myConfig["*"]["Templates"][KEYS]["StringToInsert"]
              console.log "Using global '*' '#{KEYS}'"
            catch error
              newText = "%ST%%N%KEYS \"#{KEYS}\" not found in `kennings.cson` files available to this project."

  if newText.indexOf("%TF%") != -1
    newText = stringReplaceFile(newText, moduleDir, selectionFileDir, projectDir)

  newText = replaceRepeater(newText, mySoftTabs, myTabLength)
  newText = stringReplaceAll("%ST%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)
  newText = stringReplaceAll("%FT%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)

  newText = stringReplaceAll("%CR%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)
  newText = stringReplaceAll("%N%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)
  newText = stringReplaceAll("%T%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)
  newText = stringReplaceAll("%Q%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)

  cursorPosition = newText.indexOf("%C%", 0)
  if cursorPosition > -1
    newText = newText.replace("%C%", "")
  myLength = newText.length
  selection.insertText(newText)
  # console.log "myStartColumn", myStartColumn, "cursorPosition", cursorPosition, "myLength", myLength
  if cursorPosition > -1
    selection.editor.moveLeft(myLength - cursorPosition)


#
#  fs.readFile "/home/will/.atom/packages/kennings/.atom/config.cson", "utf8", (err, text) ->
#    console.log err
#    console.log text
#    myConfig = PARSER.parse(text)
#    console.log myConfig
#    console.log myConfig["source.python"][kennings]
#  console.log selection.editor.languageMode.grammar.scopeName
#  console.log selection.editor.fileWatcher.currPath
#  console.log atom.project.rootDirectories[0]
#  console.log atom.configDirPath
#  console.log atom.packages.loadedPackages.kennings.mainModulePath
