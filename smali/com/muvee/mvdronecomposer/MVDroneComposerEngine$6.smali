.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;
.super Landroid/os/AsyncTask;
.source "MVDroneComposerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startExport(Landroid/content/Context;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:J

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 983
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iput-object p2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    iput-object p3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->d:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->b:J

    return-void
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 983
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 1042
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    new-instance v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6$1;

    invoke-direct {v1, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;)V

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->save(Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 1054
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->a:Z

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->videoEditorClose()V

    .line 1057
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    move-result-object v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->cancelledExport(Landroid/content/Context;Ljava/lang/String;)V

    .line 1059
    :cond_0
    const/4 v0, -0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1075
    :goto_0
    return-object v0

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->increaseExportCount()V

    .line 1064
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    move-result-object v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->addToMediaStoreForVideo(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1065
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->d:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->sendBroadcaseNewVideo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1067
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->videoEditorClose()V

    .line 1069
    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1073
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->videoEditorClose()V

    .line 1074
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->init(Landroid/content/Context;)V

    .line 1075
    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 998
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 1000
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::startExport: taken time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    sget-boolean v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_MAKE_THUMB_FOR_EXPORTED_VIDEO:Z

    if-eqz v0, :cond_1

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->b:J

    .line 1005
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    .line 1006
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startExport: onPostExecute: outputPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".thumb.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1011
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1013
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1014
    if-eqz v1, :cond_0

    .line 1015
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1016
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1017
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1018
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1020
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    :goto_0
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::startExport: taken time for thumb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1030
    return-void

    .line 1022
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startExport: onPostExecute: getting thumb error - file is not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 983
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 983
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 990
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 991
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->a:Z

    .line 992
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->e:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z

    .line 993
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 994
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    .line 1035
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1034
    invoke-interface {v1, v2, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 1036
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1037
    return-void
.end method
