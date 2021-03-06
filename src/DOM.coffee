###

The DOM configuration for WolfCage.

@author Destin Moulton
@git https://github.com/destinmoulton/wolfcage
@license MIT

Component of the Wolfram Cellular Automata Generator (WolfCage)

Contains the settings for the DOM objects.

Holds ids and classes of relevant DOM objects.
###
class DOM
    @ids = {
        'BOARD':{
            'CONTAINER':'wolfcage-board',
            'MESSAGE_CONTAINER':'wolfcage-generatemessage-container'
        },
        'WOLFCAGE':{
            'MAIN_CONTAINER':'wolfcage-container'
        },
        'GENERATOR':{
            'CONTENT_CONTAINER':'wolfcage-generator-board',
            'BOARD':'wolfcage-board',
            'RULE_PREVIEW_CONTAINER':'wolfcage-rules-preview-container',
            'RULE_GENERATE_BUTTON':'wolfcage-generator-generate-button',
            'THUMBMONTAGE_BUTTON':'wolfcage-generator-thumbmontage-button',
        },
        'COLORBUTTONS':{
            'CONTAINER':'wolfcage-colorbuttons-container'
            'ACTIVECOLOR_BUTTON':'wolfcage-colorbuttons-activecolor-button',
            'INACTIVECOLOR_BUTTON':'wolfcage-colorbuttons-inactivecolor-button',
            'BORDERCOLOR_BUTTON':'wolfcage-colorbuttons-bordercolor-button',
            'ACTIVECOLOR_BUTTON_PREVIEW':'wolfcage-colorbuttons-activecolor-button-preview',
            'INACTIVECOLOR_BUTTON_PREVIEW':'wolfcage-colorbuttons-inactivecolor-button-preview',
            'BORDERCOLOR_BUTTON_PREVIEW':'wolfcage-colorbuttons-bordercolor-button-preview',
        },
        'COLORSMODAL':{
            'CONTAINER':'wolfcage-colorsmodal-blocks-container'
        },
        'RULEPREVIEW': {
            'MASK_BOX':'wolfcage-rulepreview-mask',
            'RULE_NUM': 'wolfcage-rulepreview-rulenum'
        },
        'MODAL':{
            'VEIL': 'wolfcage-veil',
            'MODAL': 'wolfcage-modal',
            'TITLE': 'wolfcage-modal-title',
            'CLOSE': 'wolfcage-modal-close',
            'BODY': 'wolfcage-modal-body'
        },
        'TABS':{
            'CONTAINER':'wolfcage-tab-container'
        },
        'THUMBNAILSMODAL': {
            'CONTAINER':'wolfcage-thumbnailsmodal-montage-container'
        },
        'TOPROWEDITOR':{
            'BUTTON_GENERATE': 'wolfcage-rowed-button-generate',
            'BUTTON_RESET': 'wolfcage-rowed-button-resetrow',
            'EDITOR_CONTAINER': 'wolfcage-rowed-editor-container',
            'ROW_CONTAINER': 'wolfcage-rowed-slider-row-container',
            'SLIDER_CONTAINER': 'wolfcage-rowed-slider-container',
            'SLIDER':'wolfcage-rowed-slider',
            'SLIDER_TEXT':'wolfcage-rowed-slider-text',
        },
    }

    @classes = {
        'BOARD':{
            'CELL_ACTIVE_CLASS':'wolfcage-board-cell-active',
            'CELL_BASE_CLASS':'wolfcage-board-cell',
        },
        'COLORSMODAL':{
            'BLOCK': 'wolfcage-colorsmodal-block'
        },
        'GENERATOR':{
            'RULE_PREVIEW_CELL_ACTIVE':'wolfcage-generator-preview-cell-active'
        },
        'TABS':{
            'ACTIVE':'active'
        },
        'THUMBNAILSMODAL':{
            'THUMB_BOX':'wolfcage-thumbnailsmodal-rulethumb-box',
        },
        'TOPROWEDITOR':{
            'EDITOR_CELL':'wolfcage-rowed-editor-cell',
            'EDITOR_CELL_ACTIVE':'wolfcage-rowed-editor-cell-active',
            'SLIDER_CELL_ACTIVE':'wolfcage-board-cell-active'
        },
    }

    @prefixes = {
        'BOARD':{
            'CELL':'sb_'
        },
        'GENERATOR':{
            'RULE_PREVIEW_CELL':'wolfcage-generator-preview-',
            'RULE_PREVIEW_DIGIT':'wolfcage-generator-preview-digit-'
        },
        'TABS':{
            'TAB_PREFIX':'wolfcage-tab-'
        },
        'TOPROWEDITOR':{
            'SLIDER_COL':'wolfcage-rowed-slider-col-'
        },
    }

    #
    # Get an element by id
    #
    @elemById:(section, element) ->
        return document.getElementById(@getID(section, element))

    @elemByPrefix:(section, prefix, suffix) ->
        return document.getElementById(@getPrefix(section, prefix) + suffix)

    @elemsByClass:(section, className) ->
        return document.querySelectorAll(".#{@getClass(section, className)}")

    @getClass:(section, element) ->

        if not @classes.hasOwnProperty(section)
            console.log("DOM::getClasses() - Unable to find `"+section+"`")
            return undefined

        if not @classes[section].hasOwnProperty(element)
            console.log("DOM::getClasses() - Unable to find `"+element+"`")
            return undefined

        return @classes[section][element]

    @getID:(section, element) ->

        if not @ids.hasOwnProperty(section)
            console.log("DOM::getID() - Unable to find `"+section+"`")
            return undefined

        if not @ids[section].hasOwnProperty(element)
            console.log("DOM::getID() - Unable to find `"+element+"`")
            return undefined
            
        return @ids[section][element]
    
    @getPrefix:(section, prefix)->
        return @prefixes[section][prefix]

module.exports = DOM