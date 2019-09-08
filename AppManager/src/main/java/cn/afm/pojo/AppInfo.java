package cn.afm.pojo;

import java.util.Date;

//app基础信息表
public class AppInfo {
    private Integer id;//主键id
    private String softwareName;//软件名称
    private String APKName;//下载软件APK名称
    private String supportROM;//app支持的系统
    private String interfaceLanguage;//界面语言
    private float softwareSize;//软件大小
    private Date updateDate;//更新日期
    private Integer devId;//开发者id
    private String appInfo;//应用简介
    private Integer status;//app状态id
    private Date onSaleDate;//上架时间
    private Date offSaleDate;;//下架时间
    private Integer flatformId;//app所属平台id
    private Integer categoryLeve13;//所属三级分类id
    private Integer downloads;//下载量
    private Integer createdBy;//创建者
    private Date creationDate;//创建时间
    private Integer modifyBy;//更新者
    private Date modifyDate;;//更新时间
    private Integer categoryLeve11;//所属一级分类id
    private Integer categoryLeve12;;//所属二级分类id
    private String logoPicPath;//LOGO图片URL路径
    private String logoLocPath;//LOGO图片的服务器存储路径
    private Integer versionId;//最新的版本id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSoftwareName() {
        return softwareName;
    }

    public void setSoftwareName(String softwareName) {
        this.softwareName = softwareName;
    }

    public String getAPKName() {
        return APKName;
    }

    public void setAPKName(String APKName) {
        this.APKName = APKName;
    }

    public String getSupportROM() {
        return supportROM;
    }

    public void setSupportROM(String supportROM) {
        this.supportROM = supportROM;
    }

    public String getInterfaceLanguage() {
        return interfaceLanguage;
    }

    public void setInterfaceLanguage(String interfaceLanguage) {
        this.interfaceLanguage = interfaceLanguage;
    }

    public float getSoftwareSize() {
        return softwareSize;
    }

    public void setSoftwareSize(float softwareSize) {
        this.softwareSize = softwareSize;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Integer getDevId() {
        return devId;
    }

    public void setDevId(Integer devId) {
        this.devId = devId;
    }

    public String getAppInfo() {
        return appInfo;
    }

    public void setAppInfo(String appInfo) {
        this.appInfo = appInfo;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getOnSaleDate() {
        return onSaleDate;
    }

    public void setOnSaleDate(Date onSaleDate) {
        this.onSaleDate = onSaleDate;
    }

    public Date getOffSaleDate() {
        return offSaleDate;
    }

    public void setOffSaleDate(Date offSaleDate) {
        this.offSaleDate = offSaleDate;
    }

    public Integer getFlatformId() {
        return flatformId;
    }

    public void setFlatformId(Integer flatformId) {
        this.flatformId = flatformId;
    }

    public Integer getCategoryLeve13() {
        return categoryLeve13;
    }

    public void setCategoryLeve13(Integer categoryLeve13) {
        this.categoryLeve13 = categoryLeve13;
    }

    public Integer getDownloads() {
        return downloads;
    }

    public void setDownloads(Integer downloads) {
        this.downloads = downloads;
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

    public Integer getCategoryLeve11() {
        return categoryLeve11;
    }

    public void setCategoryLeve11(Integer categoryLeve11) {
        this.categoryLeve11 = categoryLeve11;
    }

    public Integer getCategoryLeve12() {
        return categoryLeve12;
    }

    public void setCategoryLeve12(Integer categoryLeve12) {
        this.categoryLeve12 = categoryLeve12;
    }

    public String getLogoPicPath() {
        return logoPicPath;
    }

    public void setLogoPicPath(String logoPicPath) {
        this.logoPicPath = logoPicPath;
    }

    public String getLogoLocPath() {
        return logoLocPath;
    }

    public void setLogoLocPath(String logoLocPath) {
        this.logoLocPath = logoLocPath;
    }

    public Integer getVersionId() {
        return versionId;
    }

    public void setVersionId(Integer versionId) {
        this.versionId = versionId;
    }
}
