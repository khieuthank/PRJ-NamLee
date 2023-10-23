/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author KinNhun
 */
public class Review {
    private int reviewId;
    private int placeId;
    private int userId;
    private double rating;
    private String comment;
    private String reviewDate;

    public Review() {
    }

    public Review(int reviewId, int placeId, int userId, double rating, String comment, String reviewDate) {
        this.reviewId = reviewId;
        this.placeId = placeId;
        this.userId = userId;
        this.rating = rating;
        this.comment = comment;
        this.reviewDate = reviewDate;
    }

    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    public int getPlaceId() {
        return placeId;
    }

    public void setPlaceId(int placeId) {
        this.placeId = placeId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(String reviewDate) {
        this.reviewDate = reviewDate;
    }

    @Override
    public String toString() {
        return "Review{" + "reviewId=" + reviewId + ", placeId=" + placeId + ", userId=" + userId + ", rating=" + rating + ", comment=" + comment + ", reviewDate=" + reviewDate + '}';
    }
    
    
}
