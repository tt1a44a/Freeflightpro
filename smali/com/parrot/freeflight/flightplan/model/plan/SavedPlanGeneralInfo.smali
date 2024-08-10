.class public Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
.super Ljava/lang/Object;
.source "SavedPlanGeneralInfo.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/IJsonAble;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CURRENT_JSON_VERSION:I = 0x1

.field private static final DIRTY:Ljava/lang/String; = "dirty"

.field private static final PROPERTY_DATE:Ljava/lang/String; = "date"

.field private static final PROPERTY_PRODUCT:Ljava/lang/String; = "product"

.field private static final PROPERTY_PRODUCT_ID:Ljava/lang/String; = "productId"

.field private static final PROPERTY_TITLE:Ljava/lang/String; = "title"

.field private static final UUID:Ljava/lang/String; = "uuid"

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mDate:Ljava/util/Date;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsModified:Z

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUuid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    .line 34
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    .line 34
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 36
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .locals 8

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "copy":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-object v2, v0

    .line 96
    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    iput v4, v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    .line 97
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    .line 98
    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v4, v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    .line 99
    iget-boolean v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    iput-boolean v4, v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    .line 100
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    iput-object v4, v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    .line 101
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v4, v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->clone()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .line 115
    .local v0, "that":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    if-ne v2, v3, :cond_0

    .line 116
    iget-boolean v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    iget-boolean v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    if-ne v2, v3, :cond_0

    .line 117
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v2, v3, :cond_0

    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 117
    :cond_4
    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 118
    :cond_5
    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatted()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 126
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    .line 127
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 128
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 130
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 131
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v0, v1, v2

    .line 132
    return v0

    :cond_1
    move v1, v2

    .line 127
    goto :goto_0

    :cond_2
    move v1, v2

    .line 128
    goto :goto_1
.end method

.method public initWithJsonObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    .line 70
    const-string v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    const-string v2, "date"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_1
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    .line 71
    const-string/jumbo v0, "productId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const-string/jumbo v0, "productId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 78
    :goto_2
    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    .line 80
    const-string v0, "dirty"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "dirty"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    .line 81
    return-void

    :cond_1
    move-object v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_1

    .line 73
    :cond_3
    const-string/jumbo v0, "product"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    const-string/jumbo v0, "product"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromName(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_2

    .line 76
    :cond_4
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_2

    .line 79
    :cond_5
    const/4 v0, -0x1

    goto :goto_3

    .line 80
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    return v0
.end method

.method public markModified(Z)V
    .locals 0
    .param p1, "isModified"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    .line 191
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    .line 89
    return-void
.end method

.method public saveToJsonObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_0
    const-string/jumbo v0, "product"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v0, "productId"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_1
    const-string v0, "date"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    const-string v0, "dirty"

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mIsModified:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mDate:Ljava/util/Date;

    .line 183
    return-void
.end method

.method public setProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 0
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 174
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mTitle:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mUuid:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->mVersion:I

    .line 147
    return-void
.end method
