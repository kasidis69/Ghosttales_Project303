/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author BALL IT24
 */
@Entity
@Table(name = "favoritelist")
@NamedQueries({
    @NamedQuery(name = "Favoritelist.findAll", query = "SELECT f FROM Favoritelist f"),
    @NamedQuery(name = "Favoritelist.findByFavId", query = "SELECT f FROM Favoritelist f WHERE f.favId = :favId")})
public class Favoritelist implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "fav_id")
    private Integer favId;
    @JoinColumn(name = "Post_post_id", referencedColumnName = "post_id")
    @ManyToOne(optional = false)
    private Post postpostid;
    @JoinColumn(name = "User_info_username", referencedColumnName = "username")
    @ManyToOne(optional = false)
    private UserInfo userinfousername;

    public Favoritelist() {
    }

    public Favoritelist(Integer favId) {
        this.favId = favId;
    }

    public Integer getFavId() {
        return favId;
    }

    public void setFavId(Integer favId) {
        this.favId = favId;
    }

    public Post getPostpostid() {
        return postpostid;
    }

    public void setPostpostid(Post postpostid) {
        this.postpostid = postpostid;
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
        hash += (favId != null ? favId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Favoritelist)) {
            return false;
        }
        Favoritelist other = (Favoritelist) object;
        if ((this.favId == null && other.favId != null) || (this.favId != null && !this.favId.equals(other.favId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Favoritelist[ favId=" + favId + " ]";
    }
    
}
