using System;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Collections;
using BookSearchLib;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]

public class BookService : System.Web.Services.WebService
{
    BookDAL ba = new BookDAL();
    public BookService()
    {

    }

    [WebMethod]
    public BookClass[] GetTop5Books()
    {
        return (ba.GetTopFiveBooks()).ToArray();
    }
    [WebMethod]
    public BookClass[] SearchBook(string keyWords)
    {
        List<BookClass> bkList = new List<BookClass>();
        char[] pattern = { ' ', ',', '+','.','-','_'};
         string[] arr = keyWords.Split(pattern,StringSplitOptions.RemoveEmptyEntries);
         foreach (string str in arr)
         {
            string query = string.Format("select * from TblBook where bookTitle like '%{0}%' or authorName like '%{1}%' or publication like '%{2}%' or category like '%{3}%' or keywords like '%{4}%' or description like '%{5}%'", str, str, str, str, str,str);
            var test = bkList.Concat(CheckList(bkList,ba.GetAllBooks(query)));
            bkList = test.ToList<BookClass>();
         }
         return bkList.ToArray();
    }

    public List<BookClass> CheckList(List<BookClass> oldList,List<BookClass> curList)
    {
        BookClass[] bkArray = curList.ToArray<BookClass>();
        foreach (BookClass bk in oldList)
        {
            for (int i = 0; i < bkArray.Length; i++)
            {
                if (bk.ISBN == bkArray[i].ISBN)
                {
                    curList.Remove(bkArray[i]);
                }
            }
        }
        return curList;
    }
    [WebMethod]
    public BookClass[] SearchAllBooks()
    {
            List<BookClass> bkList = new List<BookClass>();
            string query = "select * from TblBook";
            return ba.GetAllBooks(query).ToArray();
    }


  

    [WebMethod]
    public BookClass[] SearchByBookName(string bName)
    {
        if (bName != "")
        {
            return ba.GetAllBooksByTitle(bName).ToArray();
        }
        else
        {
            return null;
        }
    }

    [WebMethod]
    public BookClass[] SearchByAuthorName(string aName)
    {
        if (aName != "")
        {

            return ba.GetAllBooksByAuthor(aName).ToArray();
        }
        else
        {
            return null;
        }
    }



    [WebMethod]
    public BookClass[] SearchByPublication(string publication)
    {

        if (publication != "")
        {

            return ba.GetAllBooksByPublication(publication).ToArray();
        }
        else
        {
            return null;
        }
    }

    [WebMethod]
    public BookClass[] SearchByCategory(string category)
    {

        if (category != "")
        {
            return ba.GetAllBooksByCategory(category).ToArray();
        }
        else
        {
            return null;
        }
    }


    [WebMethod]
    public string IssueBook(string isbn) 
    {
        BookDAL bb = new BookDAL();
        int bkID = 0;
        bkID = ba.GetBookID(isbn);
        if (bkID > 0)
        {
            CatalogClass lc = new CatalogClass();
            lc.bookId = bkID;
            lc.ISBN = isbn;
            bool tMsg = bb.UpdateBookStatus(lc, -1);  
            if (tMsg)
            {
                return bkID.ToString();
            }
            else
            {
                return "NotIssued";
            }
        }
        else
        {
            return "NotAvailable";
        }
    }

    //Method for returnig book

    [WebMethod]
    public string Returnbook(int bId)
    {
        BookDAL bb = new BookDAL();
        string status = bb.GetBookStatus(bId);
        string isbn = bb.GetIsbn(bId);
        if(status.Equals("False"))
        {
            CatalogClass lc = new CatalogClass();
            lc.bookId = bId;
            lc.ISBN = isbn;
            bool tMsg = bb.UpdateBookStatus(lc, 1); 
            if (tMsg)
            {
                return "Success";
            }
            else
            {
                return "Failed";
            }
        }
        else
        {
        return "AlreadyReturned";
        }
    }
}