.class public Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;
.super Ljava/lang/Object;
.source "Pud2JsonTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DOWNLOADING_PREFIX:Ljava/lang/String; = "downloading"


# instance fields
.field private final mListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;)V
    .locals 0
    .param p1, "runCollection"    # Lcom/parrot/freeflight/core/academy/RunCollection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    .line 30
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->mListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    .line 31
    return-void
.end method

.method private getRunDetail(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-static {p1}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    invoke-direct {v2, v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 99
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 104
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasEnoughMemory(J)Z
    .locals 9
    .param p1, "length"    # J

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 87
    .local v2, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 89
    .local v0, "availableMemory":J
    const-wide/16 v4, 0x8

    div-long v4, v0, v4

    cmp-long v3, v4, p1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 36
    new-instance v13, Ljava/io/File;

    sget-object v16, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->PUD_FILES_PATH:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v13, "pudFolder":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 38
    .local v9, "listFiles":[Ljava/io/File;
    if-eqz v9, :cond_7

    array-length v0, v9

    move/from16 v16, v0

    if-lez v16, :cond_7

    .line 39
    const/4 v10, 0x0

    .line 40
    .local v10, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    const/4 v15, 0x0

    .line 42
    .local v15, "uploader":Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;
    :try_start_0
    new-instance v11, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct {v11}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .local v11, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    move-object v10, v11

    .line 46
    .end local v11    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v10    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :goto_0
    if-eqz v10, :cond_2

    .line 49
    new-instance v15, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;

    .end local v15    # "uploader":Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;
    sget-object v16, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v10}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;)V

    .line 50
    .restart local v15    # "uploader":Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;
    sget-object v6, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 55
    .local v6, "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    :goto_1
    sget-object v16, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v16

    if-ne v6, v0, :cond_5

    .line 56
    array-length v0, v9

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v12, v9, v16

    .line 57
    .local v12, "pudFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".pud"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 58
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "downloading"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 59
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".pud"

    const-string v20, ".txt"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "jsonFileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    sget-object v18, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v7, "jsonFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->buildAcademyFile(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-result-object v4

    .line 62
    .local v4, "convertError":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    sget-object v18, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x2

    mul-long v18, v18, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->hasEnoughMemory(J)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 64
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->getRunDetail(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    move-result-object v14

    .line 65
    .local v14, "runDetails":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
    if-eqz v14, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v14}, Lcom/parrot/freeflight/core/academy/RunCollection;->addRunDetail(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->mListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;->onRunAdded()V

    .line 70
    :cond_0
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 56
    .end local v4    # "convertError":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .end local v7    # "jsonFile":Ljava/io/File;
    .end local v8    # "jsonFileName":Ljava/lang/String;
    .end local v14    # "runDetails":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
    :cond_1
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 43
    .end local v6    # "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .end local v12    # "pudFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 44
    .local v5, "e":Lcom/parrot/arsdk/arsal/ARSALException;
    invoke-virtual {v5}, Lcom/parrot/arsdk/arsal/ARSALException;->printStackTrace()V

    goto/16 :goto_0

    .line 52
    .end local v5    # "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :cond_2
    sget-object v6, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .restart local v6    # "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    goto/16 :goto_1

    .line 71
    .restart local v4    # "convertError":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .restart local v7    # "jsonFile":Ljava/io/File;
    .restart local v8    # "jsonFileName":Ljava/lang/String;
    .restart local v12    # "pudFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_1

    .line 72
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 76
    .end local v4    # "convertError":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .end local v7    # "jsonFile":Ljava/io/File;
    .end local v8    # "jsonFileName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 80
    .end local v12    # "pudFile":Ljava/io/File;
    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 81
    :cond_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->dispose()Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 83
    .end local v6    # "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .end local v10    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .end local v15    # "uploader":Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;
    :cond_7
    return-void
.end method
