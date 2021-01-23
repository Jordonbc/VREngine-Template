

using UnrealBuildTool;
using System.Collections.Generic;

public class VR_EngineTemplateEditorTarget : TargetRules
{
	public VR_EngineTemplateEditorTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;
		DefaultBuildSettings = BuildSettingsVersion.V2;

		ExtraModuleNames.AddRange( new string[] { "VR_EngineTemplate" } );
	}
}
