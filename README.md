## 使用 rust 扩展 python

### 编译生成动态库文件并测试
```shell
$ sh build.sh
```

说明：编译生成的文件位于：target/release/libmylib.dylib（在Linux下后缀名为.so, 在Windows下后缀名为.dll），为了Python能够识别它，我们需要修改为mylib.so

```python 
Python 3.9.1 (default, Dec 28 2020, 11:24:06) 
[Clang 12.0.0 (clang-1200.0.32.28)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> import mylib
>>> help(mylib)
>>> mylib.get_result("jack")
'Rust says: jack'
```

### 使用 docker 构建 web 服务并运行
```shell
$ sh run.sh
```

### rust 扩展 python 库
https://crates.io/crates/pyo3
https://crates.io/crates/cpython

#### 参考
https://codeburst.io/how-to-use-rust-to-extend-python-360174ee5819
