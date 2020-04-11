#! /usr/bin/env node

var program = require('commander');
var json2djinni = require('./core');
var fs = require('fs-extra');

program
  .version('0.1.1')
  .option('-j, --json <json>', 'json文件')
  .option('-d, --djinni <djinni>', 'djinni文件')
  .parse(process.argv);

const { json, djinni } = program;

const content = fs.readJsonSync(json, 'utf-8');

fs.writeFileSync(djinni, json2djinni(content.api && content.ret && content.v ? content.data : content), 'utf-8');

console.log('success !!')