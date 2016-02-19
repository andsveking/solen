module glfw

GLFW_CONTEXT_VERSION_MAJOR : int = 0x00022002i32
GLFW_CONTEXT_VERSION_MINOR : int = 0x00022003i32
GLFW_CONTEXT_REVISION      : int = 0x00022004i32
GLFW_OPENGL_FORWARD_COMPAT : int = 0x00022006i32
GLFW_OPENGL_PROFILE        : int = 0x00022008i32
GLFW_OPENGL_CORE_PROFILE   : int = 0x00032001i32

struct GLFWmonitor
   p: uint32
end

struct GLFWvidmode
   p: uint32
end

struct GLFWgammaramp
   p: uint32
end

struct GLFWwindow
   p: uint32
end

struct GLFWcursor
   p: uint32
end

struct GLFWimage
   p: uint32
end

struct double_ptr
    p : double
end

struct int_ptr
    p : int
end

!nogc
!symbol("glfwInit")
extern Init() : int

!nogc
!symbol("glfwTerminate")
extern Terminate()

!nogc
!symbol("glfwGetVersion")
extern GetVersion(major : [int], minor : [int], rev : [int])

!nogc
!symbol("glfwGetVersionString")
extern GetVersionString() : String

-- !nogc
-- extern glfwSetErrorCallback(GLFWerrorfun cbfun) : GLFWerrorfun

!nogc
!symbol("glfwGetMonitors")
extern GetMonitors(count : [int]) : [GLFWmonitor]

!nogc
!symbol("glfwGetPrimaryMonitor")
extern GetPrimaryMonitor() : GLFWmonitor

!nogc
!symbol("glfwGetMonitorPos")
extern GetMonitorPos(monitor : GLFWmonitor, xpos : [int], ypos : [int])

!nogc
!symbol("glfwGetMonitorPhysicalSize")
extern GetMonitorPhysicalSize(monitor : GLFWmonitor, widthMM : [int], heightMM : [int])

!nogc
!symbol("glfwGetMonitorName")
extern GetMonitorName(monitor : GLFWmonitor) : String

-- !nogc
-- extern glfwSetMonitorCallback(GLFWmonitorfun cbfun) : GLFWmonitorfun

!nogc
!symbol("glfwGetVideoModes")
extern GetVideoModes(monitor : GLFWmonitor, count : [int]) : GLFWvidmode

!nogc
!symbol("glfwGetVideoMode")
extern GetVideoMode(monitor : GLFWmonitor) : GLFWvidmode

!nogc
!symbol("glfwSetGamma")
extern SetGamma(monitor : GLFWmonitor, gamma : float)

!nogc
!symbol("glfwGetGammaRamp")
extern GetGammaRamp(monitor : GLFWmonitor) : GLFWgammaramp

!nogc
!symbol("glfwSetGammaRamp")
extern SetGammaRamp(monitor : GLFWmonitor, ramp : GLFWgammaramp)

!nogc
!symbol("glfwDefaultWindowHints")
extern DefaultWindowHints()

!nogc
!symbol("glfwWindowHint")
extern WindowHint(target : int, hint : int)

!nogc
!symbol("glfwCreateWindow")
extern CreateWindow(width : int, height : int, title : String, monitor : GLFWmonitor, share : GLFWwindow) : GLFWwindow

!nogc
!symbol("glfwDestroyWindow")
extern DestroyWindow(window : GLFWwindow)

!nogc
!symbol("glfwWindowShouldClose")
extern WindowShouldClose(window : GLFWwindow) : int

!nogc
!symbol("glfwSetWindowShouldClose")
extern SetWindowShouldClose(window : GLFWwindow, value : int)

!nogc
!symbol("glfwSetWindowTitle")
extern SetWindowTitle(window : GLFWwindow, title : String)

!nogc
!symbol("glfwGetWindowPos")
extern GetWindowPos(window : GLFWwindow, xpos : [int], ypos : [int])

!nogc
!symbol("glfwSetWindowPos")
extern SetWindowPos(window : GLFWwindow, xpos : int, ypos : int)

!nogc
!symbol("glfwGetWindowSize")
extern GetWindowSize(window : GLFWwindow, width : [int], height : [int])

!nogc
!symbol("glfwSetWindowSize")
extern SetWindowSize(window : GLFWwindow, width : int, height : int)

!nogc
!symbol("glfwGetFramebufferSize")
extern GetFramebufferSize(window : GLFWwindow, width : int_ptr, height : int_ptr)

!nogc
!symbol("glfwGetWindowFrameSize")
extern GetWindowFrameSize(window : GLFWwindow, left : int_ptr, top : int_ptr, right : int_ptr, bottom : int_ptr)

!nogc
!symbol("glfwIconifyWindow")
extern IconifyWindow(window : GLFWwindow)

!nogc
!symbol("glfwRestoreWindow")
extern RestoreWindow(window : GLFWwindow)

!nogc
!symbol("glfwShowWindow")
extern ShowWindow(window : GLFWwindow)

!nogc
!symbol("glfwHideWindow")
extern HideWindow(window : GLFWwindow)

!nogc
!symbol("glfwGetWindowMonitor")
extern GetWindowMonitor(window : GLFWwindow) : GLFWmonitor

!nogc
!symbol("glfwGetWindowAttrib")
extern GetWindowAttrib(window : GLFWwindow, attrib : int) : int

!nogc
!symbol("glfwSetWindowUserPointer")
extern SetWindowUserPointer(window : GLFWwindow, pointer : uint32)

-- !nogc
-- extern glfwGetWindowUserPointer(window : GLFWwindow)*

-- !nogc
-- extern glfwSetWindowPosCallback(window : GLFWwindow, GLFWwindowposfun cbfun) : GLFWwindowposfun

-- !nogc
-- extern glfwSetWindowSizeCallback(window : GLFWwindow, GLFWwindowsizefun cbfun) : GLFWwindowsizefun

-- !nogc
-- extern glfwSetWindowCloseCallback(window : GLFWwindow, GLFWwindowclosefun cbfun) : GLFWwindowclosefun

-- !nogc
-- extern glfwSetWindowRefreshCallback(window : GLFWwindow, GLFWwindowrefreshfun cbfun) : GLFWwindowrefreshfun

-- !nogc
-- extern glfwSetWindowFocusCallback(window : GLFWwindow, GLFWwindowfocusfun cbfun) : GLFWwindowfocusfun

-- !nogc
-- extern glfwSetWindowIconifyCallback(window : GLFWwindow, GLFWwindowiconifyfun cbfun) : GLFWwindowiconifyfun

-- !nogc
-- extern glfwSetFramebufferSizeCallback(window : GLFWwindow, GLFWframebuffersizefun cbfun) : GLFWframebuffersizefun

!nogc
!symbol("glfwPollEvents")
extern PollEvents()

!nogc
!symbol("glfwWaitEvents")
extern WaitEvents()

!nogc
!symbol("glfwPostEmptyEvent")
extern PostEmptyEvent()

!nogc
!symbol("glfwGetInputMode")
extern GetInputMode(window : GLFWwindow, mode : int) : int

!nogc
!symbol("glfwSetInputMode")
extern SetInputMode(window : GLFWwindow, mode : int, value : int)

!nogc
!symbol("glfwGetKey")
extern GetKey(window : GLFWwindow, key : int) : int

!nogc
!symbol("glfwGetMouseButton")
extern GetMouseButton(window : GLFWwindow, button : int) : int

!nogc
!symbol("glfwGetCursorPos")
extern GetCursorPos(window : GLFWwindow, xpos : double_ptr, ypos : double_ptr)

!nogc
!symbol("glfwSetCursorPos")
extern SetCursorPos(window : GLFWwindow, xpos : double, ypos : double)

!nogc
!symbol("glfwCreateCursor")
extern CreateCursor(image : GLFWimage, xhot : int, yhot : int) : GLFWcursor

!nogc
!symbol("glfwCreateStandardCursor")
extern CreateStandardCursor(shape : int) : GLFWcursor

!nogc
!symbol("glfwDestroyCursor")
extern DestroyCursor(cursor : GLFWcursor)

!nogc
!symbol("glfwSetCursor")
extern SetCursor(window : GLFWwindow, cursor : GLFWcursor)

-- !nogc
-- extern glfwSetKeyCallback(window : GLFWwindow, GLFWkeyfun cbfun) : GLFWkeyfun

-- !nogc
-- extern glfwSetCharCallback(window : GLFWwindow, GLFWcharfun cbfun) : GLFWcharfun

-- !nogc
-- extern glfwSetCharModsCallback(window : GLFWwindow, GLFWcharmodsfun cbfun) : GLFWcharmodsfun

-- !nogc
-- extern glfwSetMouseButtonCallback(window : GLFWwindow, GLFWmousebuttonfun cbfun) : GLFWmousebuttonfun

-- !nogc
-- extern glfwSetCursorPosCallback(window : GLFWwindow, GLFWcursorposfun cbfun) : GLFWcursorposfun

-- !nogc
-- extern glfwSetCursorEnterCallback(window : GLFWwindow, GLFWcursorenterfun cbfun) : GLFWcursorenterfun

-- !nogc
-- extern glfwSetScrollCallback(window : GLFWwindow, GLFWscrollfun cbfun) : GLFWscrollfun

-- !nogc
-- extern glfwSetDropCallback(window : GLFWwindow, GLFWdropfun cbfun) : GLFWdropfun

-- !nogc
-- extern glfwJoystickPresent(joy : int) : int

-- !nogc
-- extern glfwGetJoystickAxes(joy : int, count : [int]) : float*

-- !nogc
-- extern glfwGetJoystickButtons(joy : int, count : [int]) : unsigned String

-- !nogc
-- extern glfwGetJoystickName(joy : int) : String

!nogc
!symbol("glfwSetClipboardString")
extern SetClipboardString(window : GLFWwindow, string : String)

!nogc
!symbol("glfwGetClipboardString")
extern GetClipboardString(window : GLFWwindow) : String

!nogc
!symbol("glfwGetTime")
extern GetTime() : double

!nogc
!symbol("glfwSetTime")
extern SetTime(time : double)

!nogc
!symbol("glfwMakeContextCurrent")
extern MakeContextCurrent(window : GLFWwindow)

!nogc
!symbol("glfwGetCurrentContext")
extern GetCurrentContext() : GLFWwindow

!nogc
!symbol("glfwSwapBuffers")
extern SwapBuffers(window : GLFWwindow)

!nogc
!symbol("glfwSwapInterval")
extern SwapInterval(interval : int)

!nogc
!symbol("glfwExtensionSupported")
extern ExtensionSupported(extension : String) : int

-- !nogc
-- extern glfwGetProcAddress(procname : String) : GLFWglproc
