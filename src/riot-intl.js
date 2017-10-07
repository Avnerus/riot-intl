/* jshint esnext: true */

import IntlMessageFormat from 'intl-messageformat';
import IntlRelativeFormat from 'intl-relativeformat';

import defaultLocale from './en';

import FormattedMessage from './components/message.tag';
import FormattedDate from './components/date.tag';
import FormattedNumber from './components/number.tag';
import FormattedTime from './components/time.tag';
import FormattedRelative from './components/relative.tag';

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
