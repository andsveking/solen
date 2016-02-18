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
extern glfwInit() : int

!nogc
extern glfwTerminate()

!nogc
extern glfwGetVersion(major : [int], minor : [int], rev : [int])

!nogc
extern glfwGetVersionString() : String

-- !nogc
-- extern glfwSetErrorCallback(GLFWerrorfun cbfun) : GLFWerrorfun

!nogc
extern glfwGetMonitors(count : [int]) : [GLFWmonitor]

!nogc
extern glfwGetPrimaryMonitor() : GLFWmonitor

!nogc
extern glfwGetMonitorPos(monitor : GLFWmonitor, xpos : [int], ypos : [int])

!nogc
extern glfwGetMonitorPhysicalSize(monitor : GLFWmonitor, widthMM : [int], heightMM : [int])

!nogc
extern glfwGetMonitorName(monitor : GLFWmonitor) : String

-- !nogc
-- extern glfwSetMonitorCallback(GLFWmonitorfun cbfun) : GLFWmonitorfun

!nogc
extern glfwGetVideoModes(monitor : GLFWmonitor, count : [int]) : GLFWvidmode

!nogc
extern glfwGetVideoMode(monitor : GLFWmonitor) : GLFWvidmode

!nogc
extern glfwSetGamma(monitor : GLFWmonitor, gamma : float)

!nogc
extern glfwGetGammaRamp(monitor : GLFWmonitor) : GLFWgammaramp

!nogc
extern glfwSetGammaRamp(monitor : GLFWmonitor, ramp : GLFWgammaramp)

!nogc
extern glfwDefaultWindowHints()

!nogc
extern glfwWindowHint(target : int, hint : int)

!nogc
extern glfwCreateWindow(width : int, height : int, title : String, monitor : GLFWmonitor, share : GLFWwindow) : GLFWwindow

!nogc
extern glfwDestroyWindow(window : GLFWwindow)

!nogc
extern glfwWindowShouldClose(window : GLFWwindow) : int

!nogc
extern glfwSetWindowShouldClose(window : GLFWwindow, value : int)

!nogc
extern glfwSetWindowTitle(window : GLFWwindow, title : String)

!nogc
extern glfwGetWindowPos(window : GLFWwindow, xpos : [int], ypos : [int])

!nogc
extern glfwSetWindowPos(window : GLFWwindow, xpos : int, ypos : int)

!nogc
extern glfwGetWindowSize(window : GLFWwindow, width : [int], height : [int])

!nogc
extern glfwSetWindowSize(window : GLFWwindow, width : int, height : int)

!nogc
extern glfwGetFramebufferSize(window : GLFWwindow, width : int_ptr, height : int_ptr)

!nogc
extern glfwGetWindowFrameSize(window : GLFWwindow, left : int_ptr, top : int_ptr, right : int_ptr, bottom : int_ptr)

!nogc
extern glfwIconifyWindow(window : GLFWwindow)

!nogc
extern glfwRestoreWindow(window : GLFWwindow)

!nogc
extern glfwShowWindow(window : GLFWwindow)

!nogc
extern glfwHideWindow(window : GLFWwindow)

!nogc
extern glfwGetWindowMonitor(window : GLFWwindow) : GLFWmonitor

!nogc
extern glfwGetWindowAttrib(window : GLFWwindow, attrib : int) : int

!nogc
extern glfwSetWindowUserPointer(window : GLFWwindow, pointer : uint32)

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
extern glfwPollEvents()

!nogc
extern glfwWaitEvents()

!nogc
extern glfwPostEmptyEvent()

!nogc
extern glfwGetInputMode(window : GLFWwindow, mode : int) : int

!nogc
extern glfwSetInputMode(window : GLFWwindow, mode : int, value : int)

!nogc
extern glfwGetKey(window : GLFWwindow, key : int) : int

!nogc
extern glfwGetMouseButton(window : GLFWwindow, button : int) : int

!nogc
extern glfwGetCursorPos(window : GLFWwindow, xpos : double_ptr, ypos : double_ptr)

!nogc
extern glfwSetCursorPos(window : GLFWwindow, xpos : double, ypos : double)

!nogc
extern glfwCreateCursor(image : GLFWimage, xhot : int, yhot : int) : GLFWcursor

!nogc
extern glfwCreateStandardCursor(shape : int) : GLFWcursor

!nogc
extern glfwDestroyCursor(cursor : GLFWcursor)

!nogc
extern glfwSetCursor(window : GLFWwindow, cursor : GLFWcursor)

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
extern glfwSetClipboardString(window : GLFWwindow, string : String)

!nogc
extern glfwGetClipboardString(window : GLFWwindow) : String

!nogc
extern glfwGetTime() : double

!nogc
extern glfwSetTime(time : double)

!nogc
extern glfwMakeContextCurrent(window : GLFWwindow)

!nogc
extern glfwGetCurrentContext() : GLFWwindow

!nogc
extern glfwSwapBuffers(window : GLFWwindow)

!nogc
extern glfwSwapInterval(interval : int)

!nogc
extern glfwExtensionSupported(extension : String) : int

-- !nogc
-- extern glfwGetProcAddress(procname : String) : GLFWglproc
