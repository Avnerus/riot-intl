<formatted-number>
     <span>{formattedNumber}</span>
     <script>
        this.formatOptions = [
            'localeMatcher', 'style', 'currency', 'currencyDisplay',
            'useGrouping', 'minimumIntegerDigits', 'minimumFractionDigits',
            'maximumFractionDigits', 'minimumSignificantDigits',
            'maximumSignificantDigits'
        ];

        updateItemData() {
            var value = opts.value;
            var format = opts.format;
            var defaults = format && this.getNamedFormat('number', format);
            var options  = this.filterFormatOptions(opts, defaults);
            this.formattedNumber = this.formatNumber(value, options);
        };

        this.on('update', function() {
            this.updateItemData();
        });

        this.updateItemData();
    </script>
</formatted-number>
