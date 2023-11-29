package Model;

import java.sql.Date;

public class BlogsList {
    private String title;
    private String bi;
    private Date blog_created_date;
    private String blog_image;

    public BlogsList() {
    }

    public BlogsList(String title, String bi, Date blog_created_date, String blog_image) {
        this.title = title;
        this.bi = bi;
        this.blog_created_date = blog_created_date;
        this.blog_image = blog_image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBi() {
        return bi;
    }

    public void setBi(String bi) {
        this.bi = bi;
    }

    public Date getBlog_created_date() {
        return blog_created_date;
    }

    public void setBlog_created_date(Date blog_created_date) {
        this.blog_created_date = blog_created_date;
    }

    public String getBlog_image() {
        return blog_image;
    }

    public void setBlog_image(String blog_image) {
        this.blog_image = blog_image;
    }

    @Override
    public String toString() {
        return "BlogsList{" + "title=" + title + ", bi=" + bi + ", blog_created_date=" + blog_created_date + ", blog_image=" + blog_image + '}';
    }
    
}
