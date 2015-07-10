# Chapter 1

## Welcome to 

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis leo eros, scelerisque vel dignissim vel, congue sit amet elit. Mauris auctor commodo est, ac lobortis neque tincidunt vel. Duis a mollis risus, ac auctor neque. Vivamus pulvinar id enim quis porta. Ut vel vulputate mi. Vivamus ultricies feugiat dui, a bibendum augue varius id. Maecenas a tellus non turpis luctus rutrum a et mauris.

Sed risus est, dapibus eu felis at, dictum cursus mi. Mauris tempor nulla ut est fermentum tristique. Curabitur nunc felis, fermentum id sodales imperdiet, pharetra nec tellus. Integer finibus venenatis erat, nec posuere nulla pretium vitae. Donec a erat sed velit dignissim euismod imperdiet eget tortor. Fusce ex nibh, consequat ut ullamcorper ut, sodales tempor arcu. Vivamus vehicula purus vel cursus tristique.

Nunc eros libero, consequat eu faucibus et, convallis id sapien. Proin elementum consequat eros, posuere feugiat nibh ultricies nec. Donec commodo tincidunt tempus. Phasellus consectetur eros vitae rutrum lacinia. Nullam vel turpis eleifend, commodo diam nec, posuere erat. Fusce vitae dignissim velit, eu pretium neque. Aenean ex dolor, laoreet sit amet sapien sit amet, placerat tempor sapien.

Table

|       | Column A | Column B |
|-------|----------|----------|
| Row 1 | 10       | 200      |
| Row 2 | 50       | 0        |
| Row 3 | 350      | 100      |


Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque nisi magna, faucibus non nisl in, congue commodo odio. Vivamus faucibus sollicitudin neque, at congue leo blandit a. Nulla et justo mauris. Etiam sit amet pretium mi, nec eleifend nulla. Aenean dui neque, accumsan congue vestibulum gravida, scelerisque sit amet sem. Curabitur purus risus, posuere et turpis ac, sodales auctor neque. Praesent molestie lectus eros, in mollis ligula sodales eu. Nulla pulvinar purus ut tortor laoreet tempor posuere a nunc. Pellentesque ac tincidunt velit. Suspendisse pulvinar tempor sapien facilisis ullamcorper. Sed tincidunt pulvinar velit id pellentesque.

```python
%matplotlib inline
"""
Simple demo of a scatter plot.
http://matplotlib.org/examples/shapes_and_collections/scatter_demo.html
"""
import numpy as np
import matplotlib.pyplot as plt

N = 50
x = np.random.rand(N)
y = np.random.rand(N)
colors = np.random.rand(N)
area = np.pi * (15 * np.random.rand(N))**2 # 0 to 15 point radiuses

plt.scatter(x, y, s=area, c=colors, alpha=0.5)
plt.show()
```

Integer a vehicula nulla. Curabitur convallis quis velit vitae eleifend. Phasellus condimentum at felis non pulvinar. Nulla euismod convallis eros in fringilla. Nullam vel lectus mi. Aenean ligula leo, dignissim in tempus non, mollis sit amet augue. Nulla mollis, urna vel posuere congue, justo leo sodales urna, non condimentum nisl felis et lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Curabitur a elit condimentum, mollis metus ut, lacinia purus. Nunc eget augue auctor, maximus magna eu, accumsan quam. Suspendisse sed maximus leo. Nunc consequat sem elit, et hendrerit nisl facilisis non.

