(local gl (require :moongl))
(local glfw (require :moonglfw))


(glfw.window_hint "context version major" 4)
(glfw.window_hint "context version minor" 1)
(glfw.window_hint "opengl profile" "core")

(local window (glfw.create_window 600 400))

(glfw.make_context_current window)
(gl.init)


