.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;
.super Ljava/lang/Object;
.source "ARAcademyRunCapture.java"


# static fields
.field private static final ARACADEMY_RUNCAPTURE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final ARACADEMY_RUNCAPTURE_FILENAME:Ljava/lang/String; = "filename"

.field private static final ARACADEMY_RUNCAPTURE_ID:Ljava/lang/String; = "id"

.field private static final ARACADEMY_RUNCAPTURE_MODIFICATION_DATE:Ljava/lang/String; = "modification_date"

.field private static final ARACADEMY_RUNCAPTURE_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNCAPTURE_TAG:Ljava/lang/String; = "ARAcademyRunCapture"

.field private static final ARACADEMY_RUNCAPTURE_URL:Ljava/lang/String; = "url"

.field private static final ARACADEMY_RUNCAPTURE_VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field protected runCaptureFilename:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filename"
    .end annotation
.end field

.field protected runCaptureId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field protected runCaptureModificationDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modification_date"
    .end annotation
.end field

.field protected runCaptureUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field protected runCaptureVisible:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureUrl:Ljava/lang/String;

    .line 41
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureFilename:Ljava/lang/String;

    .line 51
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureId:I

    .line 55
    :cond_0
    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureUrl:Ljava/lang/String;

    .line 59
    :cond_1
    const-string/jumbo v2, "visible"

    invoke-static {p1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    const-string/jumbo v2, "visible"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureVisible:Z

    .line 63
    :cond_2
    const-string v2, "modification_date"

    invoke-static {p1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    const-string v2, "modification_date"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "dateString":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureModificationDate:Ljava/util/Date;

    .line 69
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v2, "filename"

    invoke-static {p1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    const-string v2, "filename"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureFilename:Ljava/lang/String;

    .line 73
    :cond_4
    return-void
.end method

.method private static checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;

    .prologue
    .line 126
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string/jumbo v4, "url"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v4, "visible"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->getVisible()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 136
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 137
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "dateString":Ljava/lang/String;
    const-string v4, "modification_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "filename"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-object v2

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureId:I

    return v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureModificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureVisible:Z

    return v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureFilename:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureId:I

    .line 81
    return-void
.end method

.method public setModificationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureModificationDate:Ljava/util/Date;

    .line 105
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureUrl:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->runCaptureVisible:Z

    .line 97
    return-void
.end method
