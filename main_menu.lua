
-- Use Composer Library
local composer = require( "composer" )

-----------------------------------------------------------------------------------------

-- Use Widget Library
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "main_menu"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )
 
 function scene:create( event )

  -- Creating a group that associates objects with the scene
   local sceneGroup = self.view

  

    -- Insert the main menu image
    logo = display.newImageRect("Images/MainMenuValeriaV.png", 600, 500)


