 <div class="book">
            <div>
             <a href="view_book?id=${book.bookId}">
               <img class="book-small" 
               src="${book.image}" />
              </a>
            </div>
            <div>
               <a href="view_book?id=${book.bookId}">
                  <b>${book.title}</b>
               </a>
            </div>
            <div>
                <jsp:directive.include file="book_rating.jsp" />
            </div>
            <div><i>by ${book.author}</i></div>
            <div><b>$${book.price}</b></div>
         </div>