#define COMPONENT minedetector
#define COMPONENT_BEAUTIFIED Mine Detector
#include "\z\rid\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE
// #define CBA_DEBUG_SYNCHRONOUS
// #define ENABLE_PERFORMANCE_COUNTERS

#ifdef DEBUG_ENABLED_MINEDETECTOR
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_MINEDETECTOR
    #define DEBUG_SETTINGS DEBUG_SETTINGS_MINEDETECTOR
#endif

#include "\z\rid\addons\main\script_macros.hpp"

#define __DR 1.3