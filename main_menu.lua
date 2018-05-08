
-- Use Composer Library
local composer = require( "composer" )

-----------------------------------------------------------------------------------------

-- Use Widget Library
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "main_menu"
 
local scene = composer.newScene(sceneName)
 
-------------------------------------------------------------------------------------
--LOCAL VARIABLES
--------------------------------------------------------------------------------------
 local bkg
 local title 
 local playButton
 local creditsButton

--------------------------------------------------------------------------------------
--LOCAL FUNCTIONS
--------------------------------------------------------------------------------------
local function transitionLevel1()
	composer.gotoScene("Level1_screen", {effect = "fade", time = 1000})
end

local function transitionCredits()
	composer.gotoScene("Credits_screen", {effect = "slideDown", time = 3000})
end
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view

    --create the background
    bkg = display.newImageRect("Images/MainMenuValeriaV.png", 0, 0, 0,0)
    bkg.x  = 515
    bkg.y = 390
    bkg.width = display.contentWidth
    bkg.height = display.contentHeight+50
    sceneGroup:insert(bkg)
   
    --create the buttons
   playButton = widget.newButton(
      {
          --set its possition on the screen 
          x = display.contentWidth/2,
          y = display.contentHeight/2 + 50,

          --Insert the images here
          defaultFile = "Images/PlayButtonUnpressed.png",
          overFile = "Images/PlayButtonPressed.png",

          --set the size of the image
            width = 250,
            height = 150,

            -- When the button is released, call the Level1 screen transition function
            onRelease = transitionLevel1

       })
   sceneGroup:insert(playButton)


   --create the buttons
   creditsButton = widget.newButton(
      {
          --set its possition on the screen 
          x = display.contentWidth/2,
          y = display.contentHeight/2 + 250 ,

          --Insert the images here
          defaultFile = "Images/CreditsButtonUnpressed.png",
          overFile = "Images/CreditsButtonPressed.png",

          --set the size of the image
            width = 250,
            height = 150,

            -- When the button is released, call the Level1 screen transition function
            onRelease = transitionCredits

       })
   sceneGroup:insert(creditsButton)

   --create the title
   title = display.newImageRect("Images/TitleValeriaV.png", 0, 0, 0, 0)
   title.x = display.contentWidth/2
   title.y = 200
   title.width = 800
   title.height = 400
   sceneGroup:insert(title)
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene
