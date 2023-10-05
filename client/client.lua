ESX = exports["aurora_base"]:getSharedObject()

TriggerEvent('chat:addSuggestion', '/fps', 'Open fps boost menu')

--Menu
RegisterNetEvent('DevMaster:fpsmenu') 
AddEventHandler('DevMaster:fpsmenu', function()
  lib.showContext('DevMasterfpsmenu')
end)

--FPS Boost #1
RegisterNetEvent('DevMaster:fps1') 
AddEventHandler('DevMaster:fps1', function()
  SetTimecycleModifier('yell_tunnel_nodirect')
  lib.notify({title = '',description = 'FPS Boost',type = 'success'})
end)

--Lights Mode
RegisterNetEvent('DevMaster:fps2') 
AddEventHandler('DevMaster:fps2', function()
  SetTimecycleModifier('tunnel')
  lib.notify({title = '',description = 'Lights Mode',type = 'success'})
end)

--Graphics
RegisterNetEvent('DevMaster:fps3') 
AddEventHandler('DevMaster:fps3', function()
  SetTimecycleModifier('MP_Powerplay_blend')
  SetExtraTimecycleModifier('reflection_correct_ambient')
  lib.notify({title = '',description = 'Graphics',type = 'success'})
end)

--Simple/Reset
RegisterNetEvent('DevMaster:fps4') 
AddEventHandler('DevMaster:fps4', function()
  SetTimecycleModifier()
  ClearTimecycleModifier()
  ClearExtraTimecycleModifier()
  lib.notify({title = '',description = 'Reseted to default',type = 'success'})
end)



lib.registerContext({
  id = 'DevMasterfpsmenu',
  title =  'FPS Menu',
  onExit = function()
  end,
  options = {
      {
          title = 'FPS Boost',
          description = 'FpsLvl#1 and help you boost your FPS',
          icon = 'fas fa-keyboard',
          event = 'DevMaster:fps1',
      },
      {
        title = 'Lights Mode',
        description = 'FpsLvl#2',
        icon = 'far fa-lightbulb',
        event = 'DevMaster:fps2',
    },
    {
      title = 'Graphics',
      description = 'FpsLvl#3',
      icon = 'far fa-newspaper',
      event = 'DevMaster:fps3',
  },
      {
          title = 'Reset',
          description = 'Back to Default',
          icon = 'fa fa-remove',
          event = 'DevMaster:fps4',
      },
      
  },
})
                
