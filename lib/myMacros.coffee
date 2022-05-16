

PARSER = require "cson-parser"
FS = require 'fs'
PATH = require "path"


module.exports =
  initialize: (state) ->
    atom.commands.add "atom-workspace", "kennings:insertItb", =>
      @insertIt("b")
    atom.commands.add "atom-workspace", "kennings:insertItc", =>
      @insertIt("c")
    atom.commands.add "atom-workspace", "kennings:insertItf0", =>
      @insertIt("f0")
    atom.commands.add "atom-workspace", "kennings:insertItf1", =>
      @insertIt("f1")
    atom.commands.add "atom-workspace", "kennings:insertItf2", =>
      @insertIt("f2")
    atom.commands.add "atom-workspace", "kennings:insertItf3", =>
      @insertIt("f3")
    atom.commands.add "atom-workspace", "kennings:insertItf4", =>
      @insertIt("f4")
    atom.commands.add "atom-workspace", "kennings:insertItf5", =>
      @insertIt("f5")
    atom.commands.add "atom-workspace", "kennings:insertItf6", =>
      @insertIt("f6")
    atom.commands.add "atom-workspace", "kennings:insertItf7", =>
      @insertIt("f7")
    atom.commands.add "atom-workspace", "kennings:insertItf8", =>
      @insertIt("f8")
    atom.commands.add "atom-workspace", "kennings:insertIth", =>
      @insertIt("h")
    atom.commands.add "atom-workspace", "kennings:insertIti", =>
      @insertIt("i")
    atom.commands.add "atom-workspace", "kennings:insertIto", =>
      @insertIt("o")
    atom.commands.add "atom-workspace", "kennings:insertItpte", =>
      @insertIt("pte")
    atom.commands.add "atom-workspace", "kennings:insertItptg", =>
      @insertIt("ptg")
    atom.commands.add "atom-workspace", "kennings:insertItptl", =>
      @insertIt("ptl")
    atom.commands.add "atom-workspace", "kennings:insertItptp", =>
      @insertIt("ptp")
    atom.commands.add "atom-workspace", "kennings:insertItptr", =>
      @insertIt("ptr")
    atom.commands.add "atom-workspace", "kennings:insertItptv", =>
      @insertIt("ptv")
    atom.commands.add "atom-workspace", "kennings:insertItpte", =>
      @insertIt("te")
    atom.commands.add "atom-workspace", "kennings:insertIttg", =>
      @insertIt("tg")
    atom.commands.add "atom-workspace", "kennings:insertIttj", =>
      @insertIt("tj")
    atom.commands.add "atom-workspace", "kennings:insertIttl", =>
      @insertIt("tl")
    atom.commands.add "atom-workspace", "kennings:insertIttp", =>
      @insertIt("tp")
    atom.commands.add "atom-workspace", "kennings:insertIttr", =>
      @insertIt("tr")
    atom.commands.add "atom-workspace", "kennings:insertIttv", =>
      @insertIt("ptv")

  insertIt: (key) ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> doInsertIt(item, key))


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * fileAccess
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
fileAccess = (url) ->
  try
    myAccess = FS.accessSync url
    return true
  catch e
    return false


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * fileRead
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
fileRead = (url) ->
  data = FS.readFileSync url, "utf8"
  dataToRtn = PARSER.parse(data)
  return dataToRtn


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * meldConfigs
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
meldConfigs = (destinationConfig, sourceConfig) ->
  configToRtn = Object.assign({}, sourceConfig, destinationConfig);
  return configToRtn


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * getConfig
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
getConfig = (selection) ->
  modulePath = PATH.parse(atom.packages.loadedPackages.kennings.mainModulePath)
  moduleDir = modulePath.dir
  moduleDir = moduleDir.substr(0, moduleDir.lastIndexOf("/", moduleDir))
  moduleConfigFilename = moduleDir.concat("/kennings.cson")

  selectionFile = PATH.parse(selection.editor.fileWatcher.currPath)
  selectionFileDir = selectionFile.dir
  selectionFileExt = selectionFile.ext
  selectionConfigFilename = selectionFileDir.concat("/kennings.cson")

  projectDir = atom.project.rootDirectories[0].realPath
  projectConfigFilename = projectDir.concat("/.atom/kennings.cson")

  moduleAccess = fileAccess moduleConfigFilename
  projectAccess = fileAccess projectConfigFilename
  selectionAccess = fileAccess selectionConfigFilename
  # console.log "moduleAccess #{moduleAccess}  projectAccess #{projectAccess}  selectionAccess #{selectionAccess}"

  if moduleAccess == false
    moduleSourceFilename = moduleDir.concat("/examples/empty.cson")
    FS.copyFileSync(moduleSourceFilename, moduleConfigFilename)
  myConfig = fileRead(moduleConfigFilename)

  if projectAccess == true
    myTempConfig = fileRead(projectConfigFilename)
    myConfig = meldConfigs(myTempConfig, myConfig)
    # console.log "myTempConfig", myTempConfig
    # console.log "myConfig", myConfig

  if selectionAccess == true
    myTempConfig = fileRead(selectionConfigFilename)
    myConfig = meldConfigs(myConfig, myTempConfig)

  myConfig["grammarName"] = selection.editor.languageMode.grammar.scopeName
  return myConfig


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
    myPosn4 = haystack.indexOf("¨", haystack)
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
      else
        haystack = haystack
    myPosn = haystack.indexOf(needle, haystack)
  return haystack


# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# * wrap selection
# * #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
doInsertIt = (selection, KEY) ->
  myConfig = getConfig(selection)
  myGrammar = myConfig["grammarName"]
  # *** NOT DIAGNOSTIC ***  %_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_%_
  console.log "selection grammer is #{myGrammar}"

  try
    if myConfig[myGrammar]["Templates"]
      Templates = myConfig[myGrammar]["Templates"]
  catch e
    Templates = myConfig["*"]["Templates"]

  try
    if myConfig[myGrammar]["LowerCaseFixedText"]
      LowerCaseFixedText = myConfig[myGrammar]["LowerCaseFixedText"]
  catch e
    LowerCaseFixedText = myConfig["*"]["LowerCaseFixedText"]

  try
    if myConfig[myGrammar]["UpperCaseSelectedText"]
      UpperCaseSelectedText = myConfig[myGrammar]["UpperCaseSelectedText"]
  catch e
    UpperCaseSelectedText = myConfig["*"]["UpperCaseSelectedText"]

  try
    if myConfig[myGrammar]["LinkifyFixedText"]
      LinkifyFixedText = myConfig[myGrammar]["LinkifyFixedText"]
  catch e
    LinkifyFixedText = myConfig["*"]["LinkifyFixedText"]

  myTabLength = atom.config.get("editor.tabLength")
  mySoftTabs = selection.editor.softTabs
  myStartColumn = selection.getScreenRange().start.column
  myIndent = (myStartColumn / myTabLength)
  # console.log "myTabLength", myTabLength, "mySoftTabs", mySoftTabs, "myIndent", myIndent, "selection.getScreenRange()", selection.getScreenRange()

  selectedText = selection.getText()
  if selectedText.charAt(selectedText.length - 1) == "\n"
    selectedText = selectedText.substr(0, selectedText.length - 1).concat("\n#{doTab(myTabLength, mySoftTabs, myIndent)}")
  fixedText = selectedText

  if LinkifyFixedText == true
    fixedText = fixedText.replace(/[\s+\t+]/g, "-")
    fixedText = fixedText.replace(/[^A-Za-z0-9\-]/g, "")
  if LowerCaseFixedText == true
    fixedText = fixedText.toLowerCase()
  if UpperCaseSelectedText == true
    selectedText = selectedText.toUpperCase()

  newText = Templates[KEY]
  newText = replaceRepeater(newText, mySoftTabs, myTabLength)
  newText = stringReplaceAll("%ST%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)
  newText = stringReplaceAll("%FT%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)

  newText = stringReplaceAll("%CR%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)
  newText = stringReplaceAll("%N%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)
  newText = stringReplaceAll("%T%", newText, mySoftTabs, myTabLength, myIndent, selectedText, fixedText)

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
