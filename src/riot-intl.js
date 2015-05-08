/* jshint esnext: true */

import IntlMessageFormat from 'intl-messageformat';
import IntlRelativeFormat from 'intl-relativeformat';

import defaultLocale from './en';

import FormattedMessage from './components/message';
import IntlMixin from './mixin';

export {
    IntlMixin,
    FormattedMessage
};

export function __addLocaleData(data) {
    IntlMessageFormat.__addLocaleData(data);
}

__addLocaleData(defaultLocale);
