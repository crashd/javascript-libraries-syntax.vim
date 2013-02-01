" Vim syntax file
" Language:    Backbone.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/01
" Version:     0.9.10
" URL:         http://backbonejs.org/

syn keyword javascriptBackbone Backbone Collection Model View Events Router History Sync Utility containedin=ALL

syn keyword javascriptBEvents containedin=ALL on off trigger once listenTo stopListening
syn keyword javascriptBModel containedin=ALL extend constructor initialize get set escape has unset clear id idAttribute cid attributes
syn keyword javascriptBModel containedin=ALL changed defaults toJSON sync fetch save destroy validate validationError url urlRoot parse
syn keyword javascriptBModel containedin=ALL clone isNew hasChanged changedAttributes previous previousAttributes
syn keyword javascriptBCollection containedin=ALL extend model constructor initialize models toJSON sync add remove reset update get at 
syn keyword javascriptBCollection containedin=ALL push pop unshift shift length comparator sort pluck where url parse clone fetch create
syn keyword javascriptBRouter containedin=ALL extend routes constructor initialize route navigate
syn keyword javascriptBHistory containedin=ALL start
syn keyword javascriptBSync containedin=ALL sync ajax emulateHTTP emulateJSON
syn keyword javascriptBView containedin=ALL extend constructor initialize el $el setElement attributes render remove delegateEvents
syn keyword javascriptBView containedin=ALL undelegateEvents
syn keyword javascriptBUtility containedin=ALL noConflict 


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lisp_syntax_inits")
  if version < 508
    let did_lisp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptBackbone         Constant
  HiLink coffeeBackbone             javascriptBackbone

  HiLink javascriptBEvents          PreProc
  HiLink javascriptBModel           PreProc
  HiLink javascriptBCollection      PreProc
  HiLink javascriptBRouter          PreProc
  HiLink javascriptBHistory         PreProc
  HiLink javascriptBSync            PreProc
  HiLink javascriptBView            PreProc
  HiLink javascriptBUtility         PreProc

  delcommand HiLink
endif
