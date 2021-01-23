

using UnrealBuildTool;
using System.Collections.Generic;

public class VR_EngineTemplateTarget : TargetRules
{
	public VR_EngineTemplateTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		DefaultBuildSettings = BuildSettingsVersion.V2;

		ExtraModuleNames.AddRange( new string[] { "VR_EngineTemplate" } );
	}
}
