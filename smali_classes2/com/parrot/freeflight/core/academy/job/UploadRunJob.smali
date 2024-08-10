.class public Lcom/parrot/freeflight/core/academy/job/UploadRunJob;
.super Lcom/parrot/freeflight/core/academy/job/SyncJob;
.source "UploadRunJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/job/SyncJob",
        "<",
        "Lcom/parrot/freeflight/core/academy/RunInformation;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadRunTask"


# instance fields
.field private final mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V
    .locals 0
    .param p1, "jobHolder"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/SyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->setRunId(I)V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 102
    return-void
.end method

.method protected bridge synthetic onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Integer;Ljava/lang/Exception;)V

    return-void
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)Ljava/lang/Integer;
    .locals 15
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v8, -0x1

    .line 35
    .local v8, "runId":I
    const/4 v5, 0x0

    .line 36
    .local v5, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    const/4 v11, 0x0

    .line 38
    .local v11, "uploader":Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;
    :try_start_0
    new-instance v6, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct {v6}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v5    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .local v6, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_1
    invoke-virtual {v6}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->init()V
    :try_end_1
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v6

    .line 43
    .end local v6    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v5    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :goto_0
    if-eqz v5, :cond_5

    .line 44
    new-instance v11, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;

    .end local v11    # "uploader":Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;
    sget-object v12, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    invoke-direct {v11, v12, v5}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;)V

    .line 45
    .restart local v11    # "uploader":Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;
    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 50
    .local v2, "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    :goto_1
    sget-object v12, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_2

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->isStopped()Z

    move-result v12

    if-nez v12, :cond_2

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "fileName":Ljava/lang/String;
    const-string v12, "UploadRunTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "start upload file : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v4, Ljava/io/File;

    sget-object v12, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    const-string v13, ".txt"

    const-string v14, ".gz"

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v4, "gzipFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 56
    new-instance v7, Ljava/io/File;

    sget-object v12, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    invoke-direct {v7, v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v7, "runDetailFile":Ljava/io/File;
    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->gzipPud(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0    # "content":Ljava/lang/String;
    .end local v7    # "runDetailFile":Ljava/io/File;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->isStopped()Z

    move-result v12

    if-nez v12, :cond_9

    .line 66
    sget-object v10, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 68
    .local v10, "uploadError":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->uploadPostRun(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "runIdString":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/parrot/freeflight/core/academy/model/ARAcademyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    .line 76
    .end local v9    # "runIdString":Ljava/lang/String;
    :goto_3
    sget-object v12, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne v10, v12, :cond_7

    .line 77
    if-gtz v8, :cond_1

    iget-object v12, p0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-virtual {v12}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Ljava/lang/String;)V

    .line 84
    :cond_1
    :goto_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 90
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "gzipFile":Ljava/io/File;
    .end local v10    # "uploadError":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    :cond_2
    :goto_5
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 91
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->dispose()Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 93
    :cond_4
    sget-object v12, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_a

    new-instance v12, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;

    invoke-direct {v12, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;-><init>(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V

    throw v12

    .line 40
    .end local v2    # "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :goto_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALException;->printStackTrace()V

    goto/16 :goto_0

    .line 47
    .end local v1    # "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :cond_5
    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .restart local v2    # "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    goto/16 :goto_1

    .line 61
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "gzipFile":Ljava/io/File;
    .restart local v7    # "runDetailFile":Ljava/io/File;
    :cond_6
    const-string v12, "UploadRunTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No content found for file : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 70
    .end local v0    # "content":Ljava/lang/String;
    .end local v7    # "runDetailFile":Ljava/io/File;
    .restart local v10    # "uploadError":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Lcom/parrot/freeflight/core/academy/model/ARAcademyException;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;->printStackTrace()V

    .line 72
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;->getError()Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-result-object v10

    .line 75
    goto :goto_3

    .line 73
    .end local v1    # "e":Lcom/parrot/freeflight/core/academy/model/ARAcademyException;
    :catch_2
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 78
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    sget-object v12, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_WRONG_JSON_FORMAT:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne v10, v12, :cond_8

    .line 80
    iget-object v12, p0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-virtual {v12}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Ljava/lang/String;)V

    goto :goto_4

    .line 82
    :cond_8
    const-string v12, "UploadRunTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", upload error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 86
    .end local v10    # "uploadError":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    :cond_9
    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    goto :goto_5

    .line 95
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "gzipFile":Ljava/io/File;
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    return-object v12

    .line 40
    .end local v2    # "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .end local v5    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v6    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v5    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    goto :goto_6
.end method

.method protected bridge synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
