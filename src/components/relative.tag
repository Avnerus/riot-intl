<formatted-relative>
     <span>{formattedRelative}</span>
     <script>
        this.formatOptions = [
            'style', 'units'
        ];

        var updateItemData = function() {
            var value = opts.value;
            var format = opts.format;
            var defaults = format && this.getNamedFormat('relative', format);
            var options  = this.filterFormatOptions(opts, defaults);
            this.formattedRelative = this.formatRelative(value, options, {now: opts.now});
        }

        this.on('update', function() {
            this.updateItemData();
        });

        this.updateItemData();
    </script>
</formatted-relative>

