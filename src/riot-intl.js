/* jshint esnext: true */

import IntlMessageFormat from 'intl-messageformat';
import IntlRelativeFormat from 'intl-relativeformat';

import defaultLocale from './en';

import FormattedMessage from './components/message';
import FormattedDate from './components/date';
import FormattedNumber from './components/number';
import FormattedTime from './components/time';
import FormattedRelative from './components/relative';

import IntlMixin from './mixin';

export {
    IntlMixin,
    FormattedMessage,
    FormattedDate,
    FormattedNumber,
    FormattedTime,
    FormattedRelative
};

export function __addLocaleData(data) {
    IntlMessageFormat.__addLocaleData(data);
    IntlRelativeFormat.__addLocaleData(data);
}

__addLocaleData(defaultLocale);
