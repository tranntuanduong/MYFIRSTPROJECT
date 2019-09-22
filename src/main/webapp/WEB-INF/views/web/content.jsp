<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Junblog-singleBLog</title>

</head>
<body>

	<div class="col-md-12 col-lg-8 main-content">
            <img src="template/web/images/PHP.jpg" alt="Image" class="img-fluid mb-5">
             <div class="post-meta">
                        <span class="author mr-2"><img src="template/web/images/duong.jpg" alt="Colorlib" class="mr-2"> Colorlib</span>•
                        <span class="mr-2">March 15, 2018 </span> •
                        <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                      </div>
            <h1 class="mb-4">TIÊU ĐỀ</h1>
            <a class="category mb-5" href="#">TAG1</a> <a class="category mb-5" href="#">TAG2</a>
           
            <div class="post-content-body">
            
  <!--blog-->
 <p>   
    </p><h3> NỘI DUNG BẮT ĐẦU TỪ ĐÂY</h3>
<p></p>
<p>
   	&nbsp; &nbsp; &nbsp; -Đầu tiên thì mọi người lên biết cây nhị phân là gì đã nhỉ ?
</p>
<table cellpadding="0" cellspacing="0" align="left">
    <tbody>
        <tr>
            <td width="135" height="0">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <img width="320" height="290" src="template/web/images/caynhiphan.jpg">
            </td>
        </tr>
    </tbody>
</table>
<br clear="ALL">
<p>
    OKE, nhìn qua hình ảnh thì mọi người hẳn cũng có những suy nghĩ rồi nhỉ,
    thì ở đây cây nhị phân đơn giản định nghĩa là 1 cây có 1 con trái và 1 con
    phải, nay mình sẽ hướng dẫn mọi người các thuật toán cơ bản trên cây nhị
    phân nhé.
</p>

<p>
    </p><h3>Hàm đầu tiên: insertToHead();</h3>
<p></p>
<ul>
        <img width="600" height="211" src="template/web/images/insertToHead.PNG">
</ul>
<p>
	
    Mình khuyến khích các bạn tự viết code, không nên coppy nhé, vì các bạn tự
    nhìn tự viết thì ít ra cũng nhớ được chút ít rồi hehe.
</p>
<p>
    Quay lại vấn đề, các bạn hình dung thế này nhé, Cây nhị phân được tạo bởi
    nhiều nút, mỗi nút sẽ có 1 con trỏ liên kết trái, phải và 1 giá trị Inf.
</p>
<p>
    Bài viết cũng khá dài rồi, mọi người đón xem phần 2 ở đây nhé, yêu.
</p>
<p>à quên click vào <a a="" href="https://www.facebook.com/ttd303" target="_blank" class="category mb-5">Đây để vào tường</a> và lấy code từ mình nhé.</p>
<!--end bolg-->
<!--code-->
<pre class="prettyprint linenums prettyprinted" style=""><ol class="linenums"><li class="L0"><code><span class="com">/*--- JunBlog ---*/</span><span class="pln"> </span></code></li><li class="L1"><code><span class="com">#include</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> stdio</span><span class="pun">.</span><span class="pln">h</span><span class="pun">&gt;</span></code></li><li class="L2"><code><span class="com">#include</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> conio</span><span class="pun">.</span><span class="pln">h</span><span class="pun">&gt;</span></code></li><li class="L3"><code><span class="kwd">void</span><span class="pln"> swap</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> </span><span class="pun">&amp;</span><span class="pln">a</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> </span><span class="pun">&amp;</span><span class="pln">b</span><span class="pun">){</span></code></li><li class="L4"><code><span class="pln">	</span><span class="kwd">int</span><span class="pln"> temp </span><span class="pun">=</span><span class="pln"> a</span><span class="pun">;</span></code></li><li class="L5"><code><span class="pln">	a </span><span class="pun">=</span><span class="pln"> b</span><span class="pun">;</span></code></li><li class="L6"><code><span class="pln">	b </span><span class="pun">=</span><span class="pln"> temp</span><span class="pun">;</span></code></li><li class="L7"><code><span class="pun">}</span></code></li><li class="L8"><code><span class="kwd">void</span><span class="pln"> insertionSort</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> A</span><span class="pun">[],</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> n</span><span class="pun">){</span></code></li><li class="L9"><code><span class="pln">	</span><span class="kwd">int</span><span class="pln"> </span><span class="kwd">last</span><span class="pun">;</span></code></li><li class="L0"><code><span class="pln">	</span><span class="kwd">int</span><span class="pln"> j</span><span class="pun">;</span></code></li><li class="L1"><code><span class="pln">	</span><span class="kwd">for</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> i </span><span class="pun">=</span><span class="pln"> </span><span class="lit">1</span><span class="pun">;</span><span class="pln"> i </span><span class="pun">&lt;</span><span class="pln"> n</span><span class="pun">;</span><span class="pln"> i</span><span class="pun">++){</span></code></li><li class="L2"><code><span class="pln">		</span><span class="kwd">last</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> A</span><span class="pun">[</span><span class="pln">i</span><span class="pun">];</span></code></li><li class="L3"><code><span class="pln">		j </span><span class="pun">=</span><span class="pln"> i</span><span class="pun">;</span></code></li><li class="L4"><code><span class="pln">		</span><span class="kwd">while</span><span class="pun">(</span><span class="pln">j </span><span class="pun">&gt;</span><span class="pln"> </span><span class="lit">0</span><span class="pln"> </span><span class="pun">&amp;&amp;</span><span class="pln"> A</span><span class="pun">[</span><span class="pln">j</span><span class="pun">-</span><span class="lit">1</span><span class="pun">]</span><span class="pln"> </span><span class="pun">&gt;</span><span class="pln"> </span><span class="kwd">last</span><span class="pun">){</span></code></li><li class="L5"><code><span class="pln">			A</span><span class="pun">[</span><span class="pln">j</span><span class="pun">]</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> A</span><span class="pun">[</span><span class="pln">j </span><span class="pun">-</span><span class="pln"> </span><span class="lit">1</span><span class="pun">];</span></code></li><li class="L6"><code><span class="pln">			j </span><span class="pun">=</span><span class="pln"> j </span><span class="pun">-</span><span class="pln"> </span><span class="lit">1</span><span class="pun">;</span></code></li><li class="L7"><code><span class="pln">		</span><span class="pun">}</span></code></li><li class="L8"><code><span class="pln">		A</span><span class="pun">[</span><span class="pln">j</span><span class="pun">]</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">last</span><span class="pun">;</span></code></li><li class="L9"><code><span class="pln">	</span><span class="pun">}</span></code></li><li class="L0"><code><span class="pun">}</span></code></li><li class="L1"><code><span class="kwd">void</span><span class="pln"> selectionSort</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> A</span><span class="pun">[],</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> n</span><span class="pun">){</span></code></li><li class="L2"><code><span class="pln">	</span><span class="kwd">int</span><span class="pln"> min</span><span class="pun">;</span></code></li><li class="L3"><code><span class="pln">	</span><span class="kwd">for</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> i </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pun">;</span><span class="pln"> i </span><span class="pun">&lt;</span><span class="pln"> n </span><span class="pun">-</span><span class="pln"> </span><span class="lit">1</span><span class="pun">;</span><span class="pln"> i</span><span class="pun">++){</span></code></li><li class="L4"><code><span class="pln">		min </span><span class="pun">=</span><span class="pln"> i</span><span class="pun">;</span></code></li><li class="L5"><code><span class="pln">		</span><span class="kwd">for</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> j </span><span class="pun">=</span><span class="pln"> i </span><span class="pun">+</span><span class="pln"> </span><span class="lit">1</span><span class="pun">;</span><span class="pln"> j </span><span class="pun">&lt;</span><span class="pln"> n</span><span class="pun">;</span><span class="pln"> j</span><span class="pun">++){</span></code></li><li class="L6"><code><span class="pln">			</span><span class="kwd">if</span><span class="pun">(</span><span class="pln">A</span><span class="pun">[</span><span class="pln">j</span><span class="pun">]</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> A</span><span class="pun">[</span><span class="pln">min</span><span class="pun">])</span><span class="pln"> min </span><span class="pun">=</span><span class="pln"> j</span><span class="pun">;</span></code></li><li class="L7"><code><span class="pln">		</span><span class="pun">}</span></code></li><li class="L8"><code><span class="pln">		swap</span><span class="pun">(</span><span class="pln">A</span><span class="pun">[</span><span class="pln">i</span><span class="pun">],</span><span class="pln">A</span><span class="pun">[</span><span class="pln">min</span><span class="pun">]);</span></code></li><li class="L9"><code><span class="pln">	</span><span class="pun">}</span></code></li><li class="L0"><code><span class="pun">}</span></code></li><li class="L1"><code><span class="kwd">void</span><span class="pln"> bupbleSort</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> A</span><span class="pun">[],</span><span class="kwd">int</span><span class="pln"> n</span><span class="pun">){</span></code></li><li class="L2"><code><span class="pln">	</span><span class="kwd">for</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> i </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pun">;</span><span class="pln"> i </span><span class="pun">&lt;</span><span class="pln"> n </span><span class="pun">-</span><span class="pln"> </span><span class="lit">1</span><span class="pun">;</span><span class="pln"> i</span><span class="pun">++){</span></code></li><li class="L3"><code><span class="pln">		</span><span class="kwd">for</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> j </span><span class="pun">=</span><span class="pln"> i </span><span class="pun">+</span><span class="pln"> </span><span class="lit">1</span><span class="pun">;</span><span class="pln"> j </span><span class="pun">&lt;</span><span class="pln"> n</span><span class="pun">;</span><span class="pln"> j</span><span class="pun">++){</span></code></li><li class="L4"><code><span class="pln">			</span><span class="kwd">if</span><span class="pun">(</span><span class="pln">A</span><span class="pun">[</span><span class="pln">j</span><span class="pun">]</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> A</span><span class="pun">[</span><span class="pln">i</span><span class="pun">])</span><span class="pln"> swap</span><span class="pun">(</span><span class="pln">A</span><span class="pun">[</span><span class="pln">i</span><span class="pun">],</span><span class="pln">A</span><span class="pun">[</span><span class="pln">j</span><span class="pun">]);</span></code></li><li class="L5"><code><span class="pln">		</span><span class="pun">}</span></code></li><li class="L6"><code><span class="pln">	</span><span class="pun">}</span></code></li><li class="L7"><code><span class="pun">}</span></code></li><li class="L8"><code><span class="kwd">void</span><span class="pln"> </span><span class="kwd">print</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> A</span><span class="pun">[],</span><span class="kwd">int</span><span class="pln"> n</span><span class="pun">){</span></code></li><li class="L9"><code><span class="pln">	</span><span class="kwd">for</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> i </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pun">;</span><span class="pln"> i </span><span class="pun">&lt;</span><span class="pln"> n</span><span class="pun">;</span><span class="pln"> i</span><span class="pun">++){</span></code></li><li class="L0"><code><span class="pln">		printf</span><span class="pun">(</span><span class="str">"%d "</span><span class="pun">,</span><span class="pln">A</span><span class="pun">[</span><span class="pln">i</span><span class="pun">]);</span></code></li><li class="L1"><code><span class="pln">	</span><span class="pun">}</span></code></li><li class="L2"><code><span class="pln">	printf</span><span class="pun">(</span><span class="str">"\n"</span><span class="pun">);</span></code></li><li class="L3"><code><span class="pun">}</span></code></li><li class="L4"><code><span class="kwd">int</span><span class="pln"> main</span><span class="pun">(){</span></code></li><li class="L5"><code><span class="pln">	</span><span class="kwd">int</span><span class="pln"> A</span><span class="pun">[]</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="pun">{</span><span class="lit">1</span><span class="pun">,</span><span class="lit">5</span><span class="pun">,</span><span class="lit">8</span><span class="pun">,</span><span class="lit">9</span><span class="pun">,</span><span class="lit">7</span><span class="pun">,</span><span class="lit">6</span><span class="pun">,</span><span class="lit">15</span><span class="pun">,</span><span class="lit">2</span><span class="pun">,</span><span class="lit">4</span><span class="pun">};</span></code></li><li class="L6"><code><span class="pln">	</span><span class="kwd">int</span><span class="pln"> n </span><span class="pun">=</span><span class="pln"> </span><span class="lit">9</span><span class="pun">;</span></code></li><li class="L7"><code><span class="pln">	</span><span class="kwd">print</span><span class="pun">(</span><span class="pln">A</span><span class="pun">,</span><span class="pln">n</span><span class="pun">);</span></code></li><li class="L8"><code><span class="pln">	bupbleSort</span><span class="pun">(</span><span class="pln">A</span><span class="pun">,</span><span class="pln">n</span><span class="pun">);</span></code></li><li class="L9"><code><span class="pln">	</span><span class="kwd">print</span><span class="pun">(</span><span class="pln">A</span><span class="pun">,</span><span class="pln">n</span><span class="pun">);</span></code></li><li class="L0"><code><span class="pun">}</span></code></li><li class="L1"><code><span class="com">/*</span></code></li><li class="L2"><code><span class="com">Ket qua</span></code></li><li class="L3"><code><span class="com">1 5 8 9 7 6 15 2 4</span></code></li><li class="L4"><code><span class="com">1 2 4 5 6 7 8 9 15</span></code></li><li class="L5"><code><span class="com">*/</span></code></li></ol></pre>
<!--end code-->
<!--video-->
<iframe class="w-100" frameborder="0" height="400" scrolling="no" src="https://www.youtube-nocookie.com/embed/ryttmOOR6Xg" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""> </iframe>
<img src="template/web/images/PHP.jpg" alt="Image" class="img-fluid mb-5">
<!--end video-->
            </div>    

            <div class="pt-5">
              <h3 class="mb-5">ĐÂY LÀ PHẦN COMMENT->TÍCh HỢP FB VÀO ĐỂ BÌNH LUẬN</h3>
              <ul class="comment-list">
                <li class="comment">
                  <div class="vcard">
                    <img src="template/web/images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Jean Doe</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply rounded">Reply</a></p>
                  </div>
                </li>

                <li class="comment">
                  <div class="vcard">
                    <img src="template/web/images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Jean Doe</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply rounded">Reply</a></p>
                  </div>

                  <ul class="children">
                    <li class="comment">
                      <div class="vcard">
                        <img src="template/web/images/person_1.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>Jean Doe</h3>
                        <div class="meta">January 9, 2018 at 2:21pm</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                        <p><a href="#" class="reply rounded">Reply</a></p>
                      </div>


                      <ul class="children">
                        <li class="comment">
                          <div class="vcard">
                            <img src="template/web/images/person_1.jpg" alt="Image placeholder">
                          </div>
                          <div class="comment-body">
                            <h3>Jean Doe</h3>
                            <div class="meta">January 9, 2018 at 2:21pm</div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                            <p><a href="#" class="reply rounded">Reply</a></p>
                          </div>

                            <ul class="children">
                              <li class="comment">
                                <div class="vcard">
                                  <img src="template/web/images/person_1.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                  <h3>Jean Doe</h3>
                                  <div class="meta">January 9, 2018 at 2:21pm</div>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                  <p><a href="#" class="reply rounded">Reply</a></p>
                                </div>
                              </li>
                            </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>

                <li class="comment">
                  <div class="vcard">
                    <img src="template/web/images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Jean Doe</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply rounded">Reply</a></p>
                  </div>
                </li>
              </ul>
              <!-- END comment-list -->
              
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">Leave a comment</h3>
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="name">Name *</label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="website">Website</label>
                    <input type="url" class="form-control" id="website">
                  </div>

                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="Post Comment" class="btn btn-primary">
                  </div>

                </form>
              </div>
            </div>

          </div>
</body>
</html>