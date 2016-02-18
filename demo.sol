module demo

require io
require math

require log
require shader
require util

require glfw
require gl

!main
function main(args:[String]): int

    if (glfw.glfwInit() == 0) then
        log.err("Could not init GLFW")
        return 1
    end
    local major : [int] = [1:int]
    local minor : [int] = [1:int]
    local rev   : [int] = [1:int]
    glfw.glfwGetVersion(major, minor, rev)
    log.deb("GLFW " .. major[0] .. "." .. minor[0] .. "." .. rev[0])

    -- create window and hint for context
    glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MAJOR as int, 3)
    glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MINOR as int, 2)
    glfw.glfwWindowHint(glfw.GLFW_OPENGL_FORWARD_COMPAT as int, gl.GL_TRUE as int)
    glfw.glfwWindowHint(glfw.GLFW_OPENGL_PROFILE as int, glfw.GLFW_OPENGL_CORE_PROFILE as int)

    local window = glfw.glfwCreateWindow( 720, 480, "solen", nil, nil)
    glfw.glfwShowWindow( window )
    gl.glClearColor(0.2f, 0.2f, 0.2f, 1.0f)

    log.ok(util.read_file_as_string("README.md"))

    -- check what context version we got
    local ogl_ver_major = glfw.glfwGetWindowAttrib( window, glfw.GLFW_CONTEXT_VERSION_MAJOR)
    local ogl_ver_minor = glfw.glfwGetWindowAttrib( window, glfw.GLFW_CONTEXT_VERSION_MINOR)
    local ogl_ver_rev = glfw.glfwGetWindowAttrib( window, glfw.GLFW_CONTEXT_REVISION)
    log.deb("OpenGL context " .. ogl_ver_major .. "." .. ogl_ver_minor .. "." .. ogl_ver_rev)

    while (glfw.glfwWindowShouldClose(window) == 0) do
        gl.glClear(gl.GL_COLOR_BUFFER_BIT as uint32)



        glfw.glfwSwapBuffers(window)
        glfw.glfwPollEvents()
    end

    glfw.glfwTerminate()

    return 0

end