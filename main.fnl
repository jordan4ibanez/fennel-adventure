(local gl (require :moongl))
(local glfw (require :moonglfw))


(glfw.window_hint "context version major" 4)
(glfw.window_hint "context version minor" 1)
(glfw.window_hint "opengl profile" "core")

(local window (glfw.create_window 600 400))

(glfw.make_context_current window)
(gl.init)


(fn format [...]
  (string.format ...))


(fn window_resize_callback [_ width height]
  "Window resize callback function."
  (print (format "%s" 1))
  (print "window resized to (" width "," height ")")
  (gl.viewport 0 0 width height))

(glfw.set_window_size_callback window window_resize_callback)

(while (not (glfw.window_should_close window))
  (glfw.poll_events)
  (gl.clear_color 1.0 0.5 0.2 1.0)
  (gl.clear :color :depth)
  (when (= :pressed (glfw.get_key window :escape))
    (print "oofa")
    (glfw.set_window_should_close window true))
  (glfw.swap_buffers window))
