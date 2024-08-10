.class public Lcom/parrot/freeflight/core/academy/RunInformation;
.super Ljava/lang/Object;
.source "RunInformation.java"


# static fields
.field private static final RUN_ADDRESS:Ljava/lang/String; = "address"

.field private static final RUN_BATTERY:Ljava/lang/String; = "battery"

.field private static final RUN_CAPTURES:Ljava/lang/String; = "captures"

.field public static final RUN_DETAIL_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HHmmss"

.field private static final RUN_NEED_UPDATE_GRADE:Ljava/lang/String; = "need_update_grade"

.field public static final RUN_SUMMARY_DATE_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmss"

.field private static final RUN_TO_DELETE:Ljava/lang/String; = "to_delete"

.field private static final RUN_TO_LOCALLY_REMOVE:Ljava/lang/String; = "to_locally_remove"

.field private static final RUN_VIDEOS:Ljava/lang/String; = "videos"

.field private static final TAG:Ljava/lang/String; = "RunInformation"


# instance fields
.field private mAddress:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBattery:I

.field private final mFileName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNeedToDelete:Z

.field private mNeedToLocallyRemove:Z

.field private mNeedUpdateGrade:Z

.field private mRunDetails:Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runSummary"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 46
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    .line 47
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    .line 48
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    .line 56
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runDetails"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 46
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    .line 47
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    .line 48
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-direct {p0, v0, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;->fillRunSummary(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)V

    .line 64
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;->getBattery(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 65
    return-void
.end method

.method public static create(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 5
    .param p0, "summaryJsonFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_5

    .line 72
    :try_start_0
    new-instance v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-direct {v3, v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V

    .line 73
    .local v3, "runSummary":Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    new-instance v2, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/parrot/freeflight/core/academy/RunInformation;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)V

    .line 74
    .local v2, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    const-string v4, "address"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "address"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    .line 75
    :cond_0
    const-string v4, "battery"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "battery"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 76
    :cond_1
    const-string/jumbo v4, "to_locally_remove"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    const-string/jumbo v4, "to_locally_remove"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    .line 78
    :cond_2
    const-string/jumbo v4, "to_delete"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "to_delete"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    .line 79
    :cond_3
    const-string v4, "need_update_grade"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 80
    const-string v4, "need_update_grade"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v3    # "runSummary":Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    :cond_4
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private fillRunSummary(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)V
    .locals 6
    .param p1, "runSummary"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runDetails"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 324
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setUuid(Ljava/lang/String;)V

    .line 325
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 326
    .local v3, "summaryDateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 328
    .local v1, "detailDateFormat":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 329
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getProductId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setProductId(I)V

    .line 334
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setSerialNumber(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getControllerModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setControllerModel(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getControllerApplication()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setControllerApplication(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getProductStyle()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setProductStyle(I)V

    .line 338
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getGpsAvailable()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setGpsAvailable(Z)V

    .line 339
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getGpsLatitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setGpsLatitude(D)V

    .line 340
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getGpsLongitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setGpsLongitude(D)V

    .line 341
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getRunTime()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setRunTime(I)V

    .line 342
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getTotalRunTime()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setTotalRunTime(I)V

    .line 343
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getCrash()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setCrash(I)V

    .line 344
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getJump()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setJump(I)V

    .line 345
    return-void

    .line 330
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBattery(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)I
    .locals 8
    .param p1, "runDetails"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 348
    const/4 v1, 0x0

    .local v1, "firstLevel":I
    const/4 v3, 0x0

    .line 350
    .local v3, "lastLevel":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 351
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;

    .line 352
    .local v0, "detailData":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v1

    .line 357
    .end local v0    # "detailData":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    :cond_1
    invoke-static {v1, v6, v7}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v1

    .line 359
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    .line 360
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;

    .line 361
    .restart local v0    # "detailData":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v4

    if-eqz v4, :cond_4

    .line 362
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v3

    .line 366
    .end local v0    # "detailData":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    :cond_2
    invoke-static {v3, v6, v7}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v3

    .line 368
    .end local v2    # "i":I
    :cond_3
    sub-int v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    return v4

    .line 359
    .restart local v0    # "detailData":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private removeRunDetail()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, "detailJson":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    .line 160
    return-void
.end method

.method private writeCapturesToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 304
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 305
    .local v3, "jsonCaptures":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v1

    .line 306
    .local v1, "captures":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;>;"
    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;

    .line 308
    .local v0, "capture":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;
    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;->generateRequest(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 313
    .end local v0    # "capture":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;
    :cond_0
    :try_start_0
    const-string v4, "captures"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_1
    return-void

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private writeVideosToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 289
    .local v1, "jsonVideos":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v3

    .line 290
    .local v3, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;>;"
    if-eqz v3, :cond_0

    .line 291
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;

    .line 292
    .local v2, "video":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;
    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;->generateRequest(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 297
    .end local v2    # "video":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;
    :cond_0
    :try_start_0
    const-string/jumbo v4, "videos"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_1
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBattery()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method getLastModifyDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v0, "summaryJson":Ljava/io/File;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public getRunDetail()Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    if-nez v1, :cond_0

    .line 99
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v0, "detailJson":Ljava/io/File;
    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->fileToRunDetails(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    if-nez v1, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    .end local v0    # "detailJson":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    return-object v1

    .line 103
    .restart local v0    # "detailJson":Ljava/io/File;
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    if-gez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getBattery(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 105
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    goto :goto_0
.end method

.method public getRunDetailFilePath()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunId()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getId()I

    move-result v0

    return v0
.end method

.method public getRunSummary()Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public markGradeUpdated()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    .line 212
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 213
    return-void
.end method

.method public needDetectAddress()Z
    .locals 4

    .prologue
    const-wide v2, 0x407f400000000000L    # 500.0

    .line 179
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    .line 180
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    .line 181
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDownload()Z
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunDetailFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToDelete()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    return v0
.end method

.method public needToLocallyRemove()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    return v0
.end method

.method public needUpdateGrade()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needUpload()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getId()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refreshWithAcademyRun(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)Z
    .locals 3
    .param p1, "academyRun"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 224
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setId(I)V

    .line 226
    const/4 v0, 0x1

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setUser(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setVideos(Ljava/util/ArrayList;)V

    .line 236
    const/4 v0, 0x1

    .line 239
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setCaptures(Ljava/util/ArrayList;)V

    .line 241
    const/4 v0, 0x1

    .line 243
    :cond_3
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    if-nez v1, :cond_5

    .line 245
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVisible()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 246
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setVisible(Z)V

    .line 247
    const/4 v0, 0x1

    .line 250
    :cond_4
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGrade()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGrade()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 251
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGrade()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setGrade(I)V

    .line 252
    const/4 v0, 0x1

    .line 256
    :cond_5
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 257
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setAvatar(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x1

    .line 261
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 263
    :cond_7
    return v0
.end method

.method public removeSelf()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, "summaryJson":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 152
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->removeRunDetail()V

    .line 153
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 138
    return-void
.end method

.method public setRunDetails(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)V
    .locals 1
    .param p1, "runDetails"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getBattery(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 113
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 114
    return-void
.end method

.method public setRunId(I)V
    .locals 1
    .param p1, "runId"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setId(I)V

    .line 127
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 128
    return-void
.end method

.method public updateGrade(IZ)V
    .locals 1
    .param p1, "grade"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setGrade(I)V

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setVisible(Z)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    .line 207
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 208
    return-void
.end method

.method public updateNeedToDelete(Z)V
    .locals 1
    .param p1, "needToDelete"    # Z

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    if-eq v0, p1, :cond_0

    .line 198
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    .line 199
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 201
    :cond_0
    return-void
.end method

.method public updateNeedToLocallyRemove(Z)V
    .locals 1
    .param p1, "needLocallyRemove"    # Z

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    if-eq v0, p1, :cond_0

    .line 191
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    .line 192
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 194
    :cond_0
    return-void
.end method

.method writeSummaryToJson()V
    .locals 4

    .prologue
    .line 272
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->generateRequest(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)Lorg/json/JSONObject;

    move-result-object v1

    .line 273
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeVideosToJson(Lorg/json/JSONObject;)V

    .line 274
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeCapturesToJson(Lorg/json/JSONObject;)V

    .line 276
    :try_start_0
    const-string/jumbo v2, "to_locally_remove"

    iget-boolean v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToLocallyRemove:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v2, "to_delete"

    iget-boolean v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedToDelete:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 278
    const-string v2, "need_update_grade"

    iget-boolean v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 279
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "address"

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_0
    iget v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    if-ltz v2, :cond_1

    const-string v2, "battery"

    iget v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->jsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 285
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
