.class public abstract Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;
.super Landroid/os/AsyncTask;
.source "EmbeddedFirmwareCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x400

.field public static final EMBEDDED_FIRMWARE_SHARED_PREF_NAME:Ljava/lang/String; = "embedded_firmware"

.field private static final TAG:Ljava/lang/String; = "EmbeddedFirmwareCopy"


# instance fields
.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "embedded_firmware"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method private static clearFolderFiles(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "children":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 132
    .local v0, "child":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "child":Ljava/lang/String;
    .end local v1    # "children":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected copyPlf(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 7
    .param p1, "plfInputStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destination"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    const/4 v3, 0x0

    .line 102
    .local v3, "outputPlf":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v3    # "outputPlf":Ljava/io/OutputStream;
    .local v4, "outputPlf":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 105
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "byteRead":I
    if-lez v1, :cond_1

    .line 106
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 108
    .end local v0    # "buffer":[B
    .end local v1    # "byteRead":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 109
    .end local v4    # "outputPlf":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "outputPlf":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v3, :cond_0

    .line 113
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 114
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 119
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 111
    .end local v3    # "outputPlf":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteRead":I
    .restart local v4    # "outputPlf":Ljava/io/OutputStream;
    :cond_1
    if-eqz v4, :cond_3

    .line 113
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 114
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 116
    .end local v4    # "outputPlf":Ljava/io/OutputStream;
    .restart local v3    # "outputPlf":Ljava/io/OutputStream;
    goto :goto_2

    .line 115
    .end local v3    # "outputPlf":Ljava/io/OutputStream;
    .restart local v4    # "outputPlf":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    move-object v3, v4

    .line 116
    .end local v4    # "outputPlf":Ljava/io/OutputStream;
    .restart local v3    # "outputPlf":Ljava/io/OutputStream;
    goto :goto_2

    .line 111
    .end local v0    # "buffer":[B
    .end local v1    # "byteRead":I
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    .line 113
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 114
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 116
    :cond_2
    :goto_4
    throw v5

    .line 115
    :catch_2
    move-exception v6

    goto :goto_4

    .line 111
    .end local v3    # "outputPlf":Ljava/io/OutputStream;
    .restart local v4    # "outputPlf":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "outputPlf":Ljava/io/OutputStream;
    .restart local v3    # "outputPlf":Ljava/io/OutputStream;
    goto :goto_3

    .line 115
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_2

    .line 108
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v3    # "outputPlf":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteRead":I
    .restart local v4    # "outputPlf":Ljava/io/OutputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "outputPlf":Ljava/io/OutputStream;
    .restart local v3    # "outputPlf":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method protected copyPlfIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/io/File;)V
    .locals 9
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sdkFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "plfFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->readPlfVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "version":Ljava/lang/String;
    invoke-static {p1, p2, v4}, Lcom/parrot/freeflight/update/task/PlfChecker;->compareDownloadedPlfToVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;

    move-result-object v5

    .line 77
    .local v5, "versionInfo":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->isUpToDate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "plfFolder"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 79
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "outFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 81
    invoke-static {v3}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->clearFolderFiles(Ljava/io/File;)V

    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v6}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->copyPlf(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    if-eqz v2, :cond_1

    .line 91
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "outFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 86
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    if-eqz v1, :cond_1

    .line 91
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v6

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_2

    .line 91
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 93
    :cond_2
    :goto_3
    throw v6

    .line 92
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    goto :goto_3

    .line 89
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 86
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;->onComplete()V

    .line 126
    :cond_0
    return-void
.end method

.method public removeOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    if-ne v0, p1, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    .line 54
    :cond_0
    return-void
.end method

.method protected saveEmbeddedVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)V
    .locals 8
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-static {p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "versionSharedPrefName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 59
    iget-object v5, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    const-string v6, "embedded_firmware"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "sharedPrefVersionName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "sharedPrefVersionName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    .restart local v3    # "sharedPrefVersionName":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/parrot/freeflight/util/Version;

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "sharedPrefVersion":Lcom/parrot/freeflight/util/Version;
    new-instance v0, Lcom/parrot/freeflight/util/Version;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "newVersion":Lcom/parrot/freeflight/util/Version;
    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v5

    if-lez v5, :cond_0

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    .line 48
    return-void
.end method
