/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author BALL IT24
 */
@Entity
@Table(name = "post")
@NamedQueries({
    @NamedQuery(name = "Post.findAll", query = "SELECT p FROM Post p"),
    @NamedQuery(name = "Post.findByPostId", query = "SELECT p FROM Post p WHERE p.postId = :postId"),
    @NamedQuery(name = "Post.findByTitle", query = "SELECT p FROM Post p WHERE p.title = :title"),
    @NamedQuery(name = "Post.findByCreateTime", query = "SELECT p FROM Post p WHERE p.createTime = :createTime"),
    @NamedQuery(name = "Post.findByUpdateTime", query = "SELECT p FROM Post p WHERE p.updateTime = :updateTime"),
    @NamedQuery(name = "Post.findByTotallike", query = "SELECT p FROM Post p WHERE p.totallike = :totallike"),
    @NamedQuery(name = "Post.findByUsername", query = "SELECT p FROM Post p WHERE p.userinfousername = :userinfousername"),
    @NamedQuery(name = "Post.findByTotaldislike", query = "SELECT p FROM Post p WHERE p.totaldislike = :totaldislike")})
public class Post implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "post_id")
    private Integer postId;
    @Size(max = 45)
    @Column(name = "title")
    private String title;
    @Lob
    @Size(max = 65535)
    @Column(name = "content")
    private String content;
    @Column(name = "create_time")
    @Temporal(TemporalType.DATE)
    private Date createTime;
    @Column(name = "update_time")
    @Temporal(TemporalType.DATE)
    private Date updateTime;
    @Column(name = "totallike")
    private Integer totallike;
    @Column(name = "totaldislike")
    private Integer totaldislike;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "postpostid")
    private Collection<Favoritelist> favoritelistCollection;
    @JoinColumn(name = "User_info_username", referencedColumnName = "username")
    @ManyToOne(optional = false)
    private UserInfo userinfousername;

    public Post() {
    }

    public Post(Integer postId) {
        this.postId = postId;
    }

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getTotallike() {
        return totallike;
    }

    public void setTotallike(Integer totallike) {
        this.totallike = totallike;
    }

    public Integer getTotaldislike() {
        return totaldislike;
    }

    public void setTotaldislike(Integer totaldislike) {
        this.totaldislike = totaldislike;
    }

    public Collection<Favoritelist> getFavoritelistCollection() {
        return favoritelistCollection;
    }

    public void setFavoritelistCollection(Collection<Favoritelist> favoritelistCollection) {
        this.favoritelistCollection = favoritelistCollection;
    }

    public UserInfo getUserinfousername() {
        return userinfousername;
    }

    public void setUserinfousername(UserInfo userinfousername) {
        this.userinfousername = userinfousername;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (postId != null ? postId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Post)) {
            return false;
        }
        Post other = (Post) object;
        if ((this.postId == null && other.postId != null) || (this.postId != null && !this.postId.equals(other.postId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Post[ postId=" + postId + " ]";
    }
    
}
