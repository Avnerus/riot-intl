<formatted-message>
     <span>{formattedMessage}</span> 
    
    <script>
        updateItemData() {
            var id = opts.id;
            var values = Object.keys(opts).reduce(function (values, name) {
                var value = opts[name];
                values[name] = value;
                return values;
            }, {});
            if (message) {
                this.formattedMessage = this.formatMessage(id, values);
            }
        };

        this.on('update', function() {
            this.updateItemData();
        });

        this.updateItemData();
    </script>
</formatted-message>
