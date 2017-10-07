/* jshint esnext: true */

import IntlMessageFormat from 'intl-messageformat';
import IntlRelativeFormat from 'intl-relativeformat';

import defaultLocale from './en';

import './components/message.tag';
import './components/date.tag';
import './components/number.tag';
import './components/time.tag';
import './components/relative.tag';

import IntlMixin from './mixin';

export {
    IntlMixin
};

export function __addLocaleData(data) {
    IntlMessageFormat.__addLocaleData(data);
    IntlRelativeFormat.__addLocaleData(data);
}

__addLocaleData(defaultLocale);
