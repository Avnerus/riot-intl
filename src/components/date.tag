<formatted-date>
         <span>{formattedDate}</span> 

         <script>
            this.formatOptions = [
                'localeMatcher', 'timeZone', 'hour12', 'formatMatcher', 'weekday',
                'era', 'year', 'month', 'day', 'hour', 'minute', 'second',
                'timeZoneName'
            ];

            updateItemData() {
                var value = opts.riotValue;
                var format = opts.format;
                var defaults = format && this.getNamedFormat('date', format);
                var options  = this.filterFormatOptions(opts, defaults);
                this.formattedDate = this.formatDate(value, options);
            }

            this.on('update', function() {
                this.updateItemData();
            });

            this.updateItemData();
        </script>
</formatted-date>
