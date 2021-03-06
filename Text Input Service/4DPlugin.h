/* --------------------------------------------------------------------------------
 #
 #	4DPlugin.h
 #	source generated by 4D Plugin Wizard
 #	Project : Text Input Service
 #	author : miyako
 #	2015/04/22
 #
 # --------------------------------------------------------------------------------*/


void CommandDispatcherInMainProcess (int32_t pProcNum, PA_PluginParameters params);


// --- Input Source
void INPUT_SOURCE_Get_for_language(PA_PluginParameters params);
void INPUT_SOURCE_LIST(PA_PluginParameters params);
void INPUT_SOURCE_SET(PA_PluginParameters params);
void INPUT_SOURCE_Get(PA_PluginParameters params);
void INPUT_SOURCE_Get_category(PA_PluginParameters params);
void INPUT_SOURCE_Get_ASCII(PA_PluginParameters params);
void INPUT_SOURCE_Get_icon(PA_PluginParameters params);
void INPUT_SOURCE_Get_name(PA_PluginParameters params);
void INPUT_SOURCE_Get_type(PA_PluginParameters params);
void INPUT_SOURCE_DISABLE(PA_PluginParameters params);
void INPUT_SOURCE_ENABLE(PA_PluginParameters params);

// --- Keyboard Layout
void KEYBOARD_LAYOUT_Get_ASCII(PA_PluginParameters params);
void KEYBOARD_LAYOUT_SET_OVERRIDE(PA_PluginParameters params);
void KEYBOARD_LAYOUT_Get(PA_PluginParameters params);
void KEYBOARD_LAYOUT_Get_override(PA_PluginParameters params);
