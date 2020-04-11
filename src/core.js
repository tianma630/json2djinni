var template = require('art-template');
var _ = require('lodash');

var render = template.compile(`{{each data}}{{$value.title}} = record { {{each $value.params}}
  {{$value.key}}: {{@$value.value}};{{/each}}
}

{{/each}}
`); 

function ergodic(json) {
  const data = [];
  function _ergodic(json, name) {
    const item = {
      title: name || 'main',
      params: [],
    };
    data.push(item);
    if (_.isObject(json)) {
      for (let k in json) {
        const v = json[k];
  
        if (_.isNumber(v)) {
          item.params.push({
            key: k,
            value: 'i64',
          });
        } else if (_.isString(v)) {
          item.params.push({
            key: k,
            value: 'string',
          });
        } else if (_.isBoolean(v)) {
          item.params.push({
            key: k,
            value: 'boolean',
          });
        } else if (_.isPlainObject(v)) {
          item.params.push({
            key: k,
            value: k,
          });
  
          _ergodic(v, k);
        } else if (_.isArray(v)) {
          if (v.length > 0) {
            if (_.isString(v[0])) {
              item.params.push({
                key: k,
                value: `list<string>`,
              });
            } else if (_.isNumber(v[0])) {
              item.params.push({
                key: k,
                value: `list<number>`,
              });
            } else if (_.isBoolean(v[0])) {
              item.params.push({
                key: k,
                value: `list<boolean>`,
              });
            } else {
              item.params.push({
                key: k,
                value: `list<${k}>`,
              });
      
              _ergodic(Object.assign(...v) || {}, k);
            }
          }
        }
      }
    }
  }
  _ergodic(json);
  return data;
}

module.exports = json => {
  return render({data: ergodic(json)});
}