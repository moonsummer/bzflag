
include 'lua'

project 'bzfs'
  kind 'ConsoleApp'
  objdir '.objs'
  links {
    'libGame',
    'libObstacle',
    'libNet',
    'libLuaServer',
    'libLuaGame',
    'libCommon',
    'libDate',
    'liblua',
    'cares', 'curl', 'z', 'dl',
  }
  files {
    'AccessControlList.cpp',          'AccessControlList.h',
    'Authentication.cpp',             'Authentication.h',
    'AutoAllowTimer.cpp',             'AutoAllowTimer.h',
    'BZWError.cpp',                   'BZWError.h',
    'BZWReader.cpp',                  'BZWReader.h',
    'BackgroundTask.cpp',             'BackgroundTask.h',
    'BanCommands.cpp',
    'CmdLineOptions.cpp',             'CmdLineOptions.h',
    'CustomArc.cpp',                  'CustomArc.h',
    'CustomBase.cpp',                 'CustomBase.h',
    'CustomBox.cpp',                  'CustomBox.h',
    'CustomCone.cpp',                 'CustomCone.h',
    'CustomDynamicColor.cpp',         'CustomDynamicColor.h',
    'CustomGroup.cpp',                'CustomGroup.h',
    'CustomLink.cpp',                 'CustomLink.h',
    'CustomMaterial.cpp',             'CustomMaterial.h',
    'CustomMesh.cpp',                 'CustomMesh.h',
    'CustomMeshFace.cpp',             'CustomMeshFace.h',
    'CustomMeshTransform.cpp',        'CustomMeshTransform.h',
    'CustomPhysicsDriver.cpp',        'CustomPhysicsDriver.h',
    'CustomPyramid.cpp',              'CustomPyramid.h',
    'CustomSphere.cpp',               'CustomSphere.h',
    'CustomTeleporter.cpp',           'CustomTeleporter.h',
    'CustomTetra.cpp',                'CustomTetra.h',
    'CustomTextureMatrix.cpp',        'CustomTextureMatrix.h',
    'CustomWaterLevel.cpp',           'CustomWaterLevel.h',
    'CustomWeapon.cpp',               'CustomWeapon.h',
    'CustomWorld.cpp',                'CustomWorld.h',
    'CustomWorldText.cpp',            'CustomWorldText.h',
    'CustomZone.cpp',                 'CustomZone.h',
    'DangerousSpawnPolicy.cpp',       'DangerousSpawnPolicy.h',
    'DefaultSpawnPolicy.cpp',         'DefaultSpawnPolicy.h',
    'DropGeometry.cpp',               'DropGeometry.h',
    'EntryZones.cpp',                 'EntryZones.h',
    'Filter.cpp',                     'Filter.h',
    'FlagHistory.cpp',                'FlagHistory.h',
    'FlagInfo.cpp',                   'FlagInfo.h',
    'GameKeeper.cpp',                 'GameKeeper.h',
    'ListServerConnection.cpp',       'ListServerConnection.h',
    'MasterBanList.cpp',              'MasterBanList.h',
    'MatchManager.cpp',               'MatchManager.h',
    'ParseMaterial.cpp',              'ParseMaterial.h',
    'Permissions.cpp',                'Permissions.h',
    'RandomSpawnPolicy.cpp',          'RandomSpawnPolicy.h',
    'RecordReplay.cpp',               'RecordReplay.h',
    'RejoinList.cpp',                 'RejoinList.h',
    'Reports.cpp',                    'Reports.h',
    'Score.cpp',                      'Score.h',
    'SendLagState.cpp',               'SendLagState.h',
    'ServerCommand.cpp',              'ServerCommand.h',
    'ServerIntangibilityManager.cpp', 'ServerIntangibilityManager.h',
    'SpawnPolicy.cpp',                'SpawnPolicy.h',
    'SpawnPolicyFactory.cpp',         'SpawnPolicyFactory.h',
    'SpawnPosition.cpp',              'SpawnPosition.h',
    'Stats.cpp',                      'Stats.h',
    'TeamBases.cpp',                  'TeamBases.h',
    'TimerStrategy.h',
    'WorldEventManager.cpp',
    'WorldFileLocation.cpp',          'WorldFileLocation.h',
    'WorldFileObject.cpp',            'WorldFileObject.h',
    'WorldFileObstacle.cpp',          'WorldFileObstacle.h',
    'WorldGenerators.cpp',            'WorldGenerators.h',
    'WorldInfo.cpp',                  'WorldInfo.h',
    'WorldWeapons.cpp',               'WorldWeapons.h',
    'bzfs.cpp',                       'bzfs.h',
    'bzfsAPI.cpp',
    'bzfsChatVerify.cpp',             'bzfsChatVerify.h',
    'bzfsClientMessages.cpp',         'bzfsClientMessages.h',
    'bzfsMessages.cpp',               'bzfsMessages.h',
    'bzfsPlayerStateVerify.cpp',      'bzfsPlayerStateVerify.h',
    'bzfsPlugins.cpp',                'bzfsPlugins.h',
    'commands.cpp',                   'commands.h',
  }

configuration 'not windows'
  linkoptions { '-export-dynamic' } -- -static' }

configuration 'debug'
  targetsuffix '-debug'

configuration 'not gmake'
  targetdir(BINDIR)

