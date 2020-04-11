var j2d = require('./core');

let json = {
  name: 'wj',
  age: 11,
  animal: {
    height: 34,
    weight: 199,
    for: false
  },
  items: [
    {
      id: 123,
      title: '贺岁片',
      price: 32
    },
    {
      id: 123,
      title: '贺岁片',
      price: 32,
      pic: {
        width: 12,
        height: 333,
        url: 'httpss'
      }
    },
  ],
};

console.log(j2d(json));


/*

# djinni demo

main = record {
    
      name: string;
    
      age: i64;
    
      animal: animal;
    
      items: list<items>;
    
  }

  animal = record {
    
      height: i64;
    
      weight: i64;
    
      for: boolean;
    
  }

  items = record {
    
      id: i64;
    
      title: string;
    
      price: i64;
    
      pic: pic;
    
  }

  pic = record {
    
      width: i64;
    
      height: i64;
    
      url: string;
    
  }

*/