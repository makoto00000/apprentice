// 1. 書籍プリンター
const books = [
{
  title: 'JavaScript入門',
  author: '山田太郎'
},
{
  title: 'JavaScriptの絵本',
  author: '山田治郎'
}
]

function printBooks(books) {
  books.forEach(book => {
    console.log(`"『${book.title}』${book.author}"`)
  });
}

printBooks(books)

// 2. ユーザーパーミッションチェッカー
let users = [
  {
    username: '山田',
    permissions: {
      canRead: true,
      canWrite: true,
      canDelete: false
    }
  },
  {
    username: '佐藤',
    permissions: {
      canRead: false,
      canWrite: true,
      canDelete: false
    }
  },
  {
    username: '田中',
    permissions: {
      canRead: false,
      canWrite: false,
      canDelete: false
    }
  },
];

function checkPermission(username, permission) {
  users.forEach(user => {
    if (user.username == username) {
      console.log(user.permissions[permission])
    }
  });
}

checkPermission('山田', 'canWrite')


// 3. メソッド

// ①
const obj1 = {
  method: function() {
    console.log('method');
  },
}

obj1.method();

// ②
const obj2 = {
  method: () => {
    console.log('method');
  },
}

obj2.method();

// ③
const obj3 = {
  method() {
    console.log('method');
  },
}

obj3.method();


// ④  キーがないためエラー
// const obj4 = {
//   () => {
//     console.log('method');
//   },
// }

// obj4.method();