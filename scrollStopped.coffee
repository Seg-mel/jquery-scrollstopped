(($) ->
    $.fn.scrollStopped = (callback) ->
        $this = $(this)
        self = this
        $this.scroll ->
            if $this.data("scrollTimeout")
                clearTimeout $this.data("scrollTimeout")
            $this.data("scrollTimeout", setTimeout(callback, 250, self))
) jQuery
