#include <ScriptingBridge/ScriptingBridge.h>
#include <Carbon/Carbon.h>
#include <Cocoa/Cocoa.h>
#include <IOKit/ps/IOPowerSources.h>
#include <IOKit/ps/IOPSKeys.h>
#include <Foundation/Foundation.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <dirent.h>
#include <stdbool.h>
#include <assert.h>
#include <fcntl.h>
#include <regex.h>
#include <execinfo.h>
#include <signal.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <semaphore.h>
#include <pthread.h>

#include "misc/timing.h"
#include "misc/macros.h"
#include "misc/log.h"
#include "misc/helpers.h"
#include "misc/memory_pool.h"
#include "misc/socket.h"
#include "misc/socket.c"

#include "event_loop.h"
#include "mouse.h"
#include "event.h"
#include "workspace.h"
#include "message.h"
#include "display.h"
#include "bar.h"
#include "graph_data.h"
#include "bar_item.h"
#include "custom_events.h"
#include "bar_manager.h"

#include "event_loop.c"
#include "mouse.c"
#include "event.c"
#include "workspace.m"
#include "message.c"
#include "display.c"
#include "bar.c"
#include "graph_data.c"
#include "bar_item.c"
#include "custom_events.c"
#include "bar_manager.c"

#include "sketchybar.c"
