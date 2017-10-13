<formatted-time>
     <span>{formattedTime}</span>
     <script>
        this.formatOptions = [
            'localeMatcher', 'timeZone', 'hour12', 'formatMatcher', 'weekday',
            'era', 'year', 'month', 'day', 'hour', 'minute', 'second',
            'timeZoneName'
        ];

        updateItemData() {
            /* Support only short. workaround for explorer. need to upgrade and rewrite riot-intl 
            var value = opts.value
            var ms = value % 1000;
            value = (value - ms) / 1000;
            var secs = value % 60;
            var mins = (value - secs) / 60; */

            // For supporting IE? this.formattedTime =  mins + ':' + ('0' + secs).slice(-2);
            var value = opts.riotValue;
            var format = opts.format;
            var defaults = format && this.getNamedFormat('time', format);
            var options = this.filterFormatOptions(opts, defaults);
            this.formattedTime = this.formatTime(value, options);
        };

        this.on('update', function() {
            this.updateItemData();
        });
    </script>
</formatted-time>
