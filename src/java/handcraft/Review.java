package handcraft;
// Generated Aug 7, 2022 2:29:18 PM by Hibernate Tools 4.3.1



/**
 * Review generated by hbm2java
 */
public class Review  implements java.io.Serializable {


     private Integer id;
     private String cname;
     private int rating;
     private String reviewmsg;

    public Review() {
    }

    public Review(String cname, int rating, String reviewmsg) {
       this.cname = cname;
       this.rating = rating;
       this.reviewmsg = reviewmsg;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getCname() {
        return this.cname;
    }
    
    public void setCname(String cname) {
        this.cname = cname;
    }
    public int getRating() {
        return this.rating;
    }
    
    public void setRating(int rating) {
        this.rating = rating;
    }
    public String getReviewmsg() {
        return this.reviewmsg;
    }
    
    public void setReviewmsg(String reviewmsg) {
        this.reviewmsg = reviewmsg;
    }




}

