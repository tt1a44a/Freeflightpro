.class Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;
.super Ljava/lang/Object;
.source "ImageCacheFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getAsync(Ljava/lang/String;Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;Ljava/lang/Integer;Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    iput-object p2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->b:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

    iput-object p4, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 257
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 258
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.muvee.dsg.image.cache.on.result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 261
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->getBitmapSize()J

    move-result-wide v4

    .line 262
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    int-to-long v0, v0

    add-long v2, v4, v0

    .line 263
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getRandomAccessFileReadOnly()Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-object v9, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->a:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    mul-long/2addr v2, v10

    iget-object v9, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v9}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    move-result-object v9

    iget v9, v9, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    int-to-long v10, v9

    add-long/2addr v2, v10

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 264
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 266
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->b:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3$1;

    invoke-direct {v0, p0, v8}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3$1;-><init>(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;Landroid/graphics/Bitmap;)V

    invoke-static {v7, v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    .line 279
    invoke-static {v7}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 281
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 283
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 278
    :try_start_4
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    .line 279
    invoke-static {v7}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 278
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-virtual {v1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    .line 279
    invoke-static {v7}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
