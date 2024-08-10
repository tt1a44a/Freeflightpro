.class Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;
.super Ljava/lang/Object;
.source "ImageCacheFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->push(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    iput-object p2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->a:Landroid/graphics/Bitmap;

    .line 187
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 188
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 189
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    if-ne v4, v2, :cond_3

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    .line 190
    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    if-ne v5, v2, :cond_3

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->a:Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v3}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    if-lez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v3}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 196
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v8, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    .line 200
    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v3}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v3

    iget v3, v3, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    .line 197
    invoke-static/range {v0 .. v5}, Lcom/muvee/dsg/mams/image/cache/ImageCacheUtil;->createMatrixForResizeRotateCropOrLetterBox(ZIIIII)Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->getBitmapSize()J

    move-result-wide v0

    .line 206
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 207
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getRandomAccessFileReadWrite()Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 210
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    new-array v2, v2, [B

    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 213
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v8, v3

    invoke-static {v3, v4, v2, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 215
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 227
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->f(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I

    .line 232
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I

    move-result v0

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->g(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 233
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadWrite()V

    .line 241
    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    :try_start_3
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadWrite()V

    goto :goto_2

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 239
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-virtual {v1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadWrite()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    move-object v6, v0

    goto/16 :goto_1
.end method
