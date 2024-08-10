.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;
.super Ljava/lang/Object;
.source "ARAcademyRunMedia.java"


# static fields
.field private static final ARACADEMY_RUNMEDIA_FILENAME:Ljava/lang/String; = "filename"

.field private static final ARACADEMY_RUNMEDIA_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNMEDIA_TAG:Ljava/lang/String; = "ARAcademyRunMedia"

.field private static final ARACADEMY_RUNMEDIA_URL:Ljava/lang/String; = "url"

.field private static final ARACADEMY_RUNMEDIA_VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field protected runMediaFilename:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filename"
    .end annotation
.end field

.field protected runMediaUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field protected runMediaVisible:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;->runMediaVisible:Z

    return v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;->runMediaVisible:Z

    .line 41
    return-void
.end method
