.class public Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;
.super Landroid/os/AsyncTask;
.source "ResourceExtractingTask2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Float;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTE_BUFFER_SIZE:I = 0x2000

.field public static final RESULT_EXTRACT_FAILED:I = -0x1

.field public static final RESULT_EXTRACT_SUCESS:I = 0x1

.field private static a:Ljava/lang/String;

.field public static timeStart:J


# instance fields
.field private b:Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    .line 25
    const-class v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->c:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static copyAsset(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 210
    sget-object v1, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    const-string v2, "::copyAsset: ++"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    .line 213
    invoke-static {p0}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 214
    invoke-static {p0, v1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->isNeedToExtract(Landroid/content/Context;Ljava/io/File;)Z

    move-result v2

    .line 215
    sget-object v3, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::copyAsset: needToOverride -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez v2, :cond_0

    .line 218
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::copyAsset: Already copyed!! time taken -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "/styles"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 224
    sget-object v3, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::copyAsset: DELETE fileStyleFolder!! length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {v2}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->deleteDir(Ljava/io/File;)Z

    .line 226
    sget-object v2, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::copyAsset: DELETE timeTaken -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    :goto_1
    sget-object v2, Lcom/muvee/mvdronecomposer/BuildConfig;->STYLE_RESOURCE_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 230
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/BuildConfig;->STYLE_RESOURCE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "muvee"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    sget-object v3, Lcom/muvee/mvdronecomposer/BuildConfig;->STYLE_RESOURCE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p0, v3, v2}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->copyAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_2
    invoke-static {p0, v1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->copyVersionFile(Landroid/content/Context;Ljava/io/File;)V

    .line 236
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::copyAsset: done !! time taken -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    const-string v1, "::copyAsset: --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static copyAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::copyAssetToFile: COPY -> name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 170
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 175
    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    .line 176
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_3

    .line 177
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 183
    :cond_1
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v0

    .line 180
    :cond_3
    if-eqz v3, :cond_4

    .line 181
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 183
    :cond_4
    if-eqz v2, :cond_5

    .line 184
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 187
    :cond_5
    return-void

    .line 180
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static copyVersionFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "version.txt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    const-string v1, "muvee/version.txt"

    invoke-static {p0, v1, v0}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->copyAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 162
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 190
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 192
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 193
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 194
    if-nez v3, :cond_0

    .line 200
    :goto_1
    return v1

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::deleteDir: DELETE -> name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_1
.end method

.method public static getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 204
    const-string v0, "cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::getInternalAppCacheFolder: path -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v0
.end method

.method public static getListOfFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    array-length v0, v1

    if-gtz v0, :cond_2

    .line 138
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    return-void

    .line 140
    :cond_2
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->getListOfFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isNeedToExtract(Landroid/content/Context;Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "muvee/version.txt"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->readVersion(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v2

    .line 115
    sget-object v3, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::isNeedToExtract:: assetsVersion(new): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 117
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "version.txt"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 120
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->readVersion(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v1

    .line 121
    sget-object v4, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::isNeedToExtract:: filesVersion(current): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static readVersion(Ljava/io/InputStreamReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    if-lez v2, :cond_0

    .line 152
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->isNeedToExtract(Landroid/content/Context;Ljava/io/File;)Z

    move-result v2

    .line 50
    sget-object v3, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::doInBackground: needToOverride -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-nez v2, :cond_0

    .line 53
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::doInBackground: Already extracted!! timeTaken -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "/styles"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 59
    sget-object v3, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::doInBackground: DELETE fileStyleFolder!! length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v2}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->deleteDir(Ljava/io/File;)Z

    .line 61
    sget-object v2, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::doInBackground: DELETE timeTaken -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :goto_1
    sget-object v2, Lcom/muvee/mvdronecomposer/BuildConfig;->STYLE_RESOURCE_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 65
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/BuildConfig;->STYLE_RESOURCE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "muvee"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->c:Landroid/content/Context;

    sget-object v4, Lcom/muvee/mvdronecomposer/BuildConfig;->STYLE_RESOURCE_LIST:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v3, v4, v2}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->copyAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 67
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v0

    mul-float/2addr v4, v5

    sget-object v5, Lcom/muvee/mvdronecomposer/BuildConfig;->STYLE_RESOURCE_LIST:[Ljava/lang/String;

    array-length v5, v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->publishProgress([Ljava/lang/Object;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    const-string v1, "::doInBackground: RESULT_EXTRACT_FAILED!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->copyVersionFile(Landroid/content/Context;Ljava/io/File;)V

    .line 77
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    const-string v1, "::doInBackground: RESULT_EXTRACT_SUCESS!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    const-string v2, "::doInBackground: Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 93
    sget-object v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::onPostExecute: result -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeTaken -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    .line 96
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->b:Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->b:Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;

    invoke-interface {v0}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;->onExtractingCompleted()V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method protected varargs a([Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getResourceExtractingListener()Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->b:Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->timeStart:J

    .line 43
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->a([Ljava/lang/Float;)V

    return-void
.end method

.method public setResourceExtractingListener(Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->b:Lcom/muvee/mvdronecomposer/ResourceExtractingTask2$ResourceExtractingListener;

    .line 109
    return-void
.end method
