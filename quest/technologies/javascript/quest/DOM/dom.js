const h1 = document.querySelector('h1');
h1.textContent = 'シンプルブログ';

let title = document.getElementById('title')
let content = document.getElementById('content')
let btn = document.getElementById('submit_btn')

let data = [];
let posts = [];

function addMouseEvent(posts) {
  posts.forEach(post => {
    post.addEventListener('mouseover', () => {
      post.style.backgroundColor = "yellow";
    });
    post.addEventListener('mouseout', () => {
      post.style.backgroundColor = "white";
    });
  });
}

const initPost = (data) => {
  const fragment = document.createDocumentFragment();
  if (data.length > 3) {
    data.shift()
  }
  data.map((item) => {
    let item_div = document.createElement('div');
    let item_h2 = document.createElement('h2');
    let item_p = document.createElement('p');
    item_h2.textContent = item.title
    item_p.textContent = item.content
    item_div.appendChild(item_h2)
    item_div.appendChild(item_p)
    fragment.appendChild(item_div);
  });
  target = document.getElementById('posts')
  target.innerHTML = '';
  target.appendChild(fragment);
  posts = document.getElementById('posts').childNodes;
  addMouseEvent(posts);
};

function buttonClick() {
  console.log(title.value)
  console.log(content.value)
  data.push({title: title.value, content: content.value})
  initPost(data);
  title.value = ""
  content.value = ""
}

btn.addEventListener('click', (event) => {
  event.preventDefault();
  buttonClick();
});
