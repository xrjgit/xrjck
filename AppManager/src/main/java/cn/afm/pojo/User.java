package cn.afm.pojo;

import org.hibernate.validator.constraints.Email;

import javax.validation.constraints.NotNull;
import java.util.Date;
//开发者用户
public class User {
    private Integer id;//主键id
    @NotNull(message = "账号不能为空")
    private String devCode;//开发者帐号(系统登录账号)
    @NotNull(message = "昵称不能为空")
    private String devName;//开发者名称
    @NotNull(message = "密码不能为空")
    private String devPassword;//开发者密码
    @NotNull(message = "邮箱不能为空")
    @Email(message="邮箱格式错误")
    private String devEmail;//开发者邮箱
    private String devInfo;	//开发者简介
    private Integer createdBy;//创建者
    private Date creationDate;//创建时间
    private Integer modifyBy;//更新者
    private Date modifyDate;//更新时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDevCode() {
        return devCode;
    }

    public void setDevCode(String devCode) {
        this.devCode = devCode;
    }

    public String getDevName() {
        return devName;
    }

    public void setDevName(String devName) {
        this.devName = devName;
    }

    public String getDevPassword() {
        return devPassword;
    }

    public void setDevPassword(String devPassword) {
        this.devPassword = devPassword;
    }

    public String getDevEmail() {
        return devEmail;
    }

    public void setDevEmail(String devEmail) {
        this.devEmail = devEmail;
    }

    public String getDevInfo() {
        return devInfo;
    }

    public void setDevInfo(String devInfo) {
        this.devInfo = devInfo;
    }

    public Integer getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Integer createdBy) {
        this.createdBy = createdBy;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Integer getModifyBy() {
        return modifyBy;
    }

    public void setModifyBy(Integer modifyBy) {
        this.modifyBy = modifyBy;
    }

    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }
}
