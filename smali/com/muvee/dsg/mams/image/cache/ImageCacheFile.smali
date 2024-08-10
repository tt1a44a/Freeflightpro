.class public Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;
.super Ljava/lang/Object;
.source "ImageCacheFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;,
        Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

.field private d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

.field private e:I

.field private f:Ljava/io/RandomAccessFile;

.field private g:Ljava/io/RandomAccessFile;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->h:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b:I

    .line 82
    iput-object p3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    .line 83
    iput-object p4, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    .line 84
    invoke-direct {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e:I

    return p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget v0, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget-object v1, v1, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget-object v1, v1, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.muvee.dsg.image.cache.file.thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->removeQuit(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$1;

    invoke-direct {v1, p0, v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$1;-><init>(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b()V

    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    return-object v0
.end method

.method private b()V
    .locals 12

    .prologue
    .line 132
    iget-object v7, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->h:Ljava/util/Map;

    monitor-enter v7

    .line 135
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getRandomAccessFileReadOnly()Ljava/io/RandomAccessFile;

    move-result-object v8

    .line 138
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->getBitmapSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    int-to-long v2, v2

    add-long v10, v0, v2

    .line 139
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b:I

    if-ge v6, v0, :cond_0

    .line 140
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v2, v6

    mul-long/2addr v2, v10

    iget-object v4, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget v4, v4, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget v1, v1, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    new-array v1, v1, [B

    .line 142
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 143
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget-object v1, v1, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->h:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 159
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    .line 161
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :try_start_3
    invoke-virtual {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 159
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static synthetic c(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    return-object v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e:I

    return v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->e:I

    return v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->b:I

    return v0
.end method


# virtual methods
.method public cloaseRandomAccessFileReadOnly()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->g:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->g:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iput-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->g:Ljava/io/RandomAccessFile;

    goto :goto_0
.end method

.method public cloaseRandomAccessFileReadWrite()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->f:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->f:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    iput-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->f:Ljava/io/RandomAccessFile;

    goto :goto_0
.end method

.method public getAsync(Ljava/lang/String;Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;)Z
    .locals 4

    .prologue
    .line 248
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->h:Ljava/util/Map;

    monitor-enter v1

    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 251
    if-eqz v0, :cond_0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.muvee.dsg.image.cache.file.read.thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->removeQuit(Ljava/lang/String;)V

    .line 254
    new-instance v3, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;

    invoke-direct {v3, p0, v0, p2, v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;-><init>(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;Ljava/lang/Integer;Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 285
    const/4 v0, 0x1

    monitor-exit v1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandomAccessFileReadOnly()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->g:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->g:Ljava/io/RandomAccessFile;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->g:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public getRandomAccessFileReadWrite()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->f:Ljava/io/RandomAccessFile;

    .line 88
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->f:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public getSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 293
    iget-object v9, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->h:Ljava/util/Map;

    monitor-enter v9

    .line 294
    :try_start_0
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    .line 296
    if-eqz v4, :cond_0

    .line 297
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    iget v3, v3, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    iget-object v5, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    invoke-static {v5}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 300
    :try_start_1
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->c:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    invoke-virtual {v2}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->getBitmapSize()J

    move-result-wide v6

    .line 301
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget v2, v2, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    int-to-long v2, v2

    add-long v10, v6, v2

    .line 302
    invoke-virtual {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getRandomAccessFileReadOnly()Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v10

    iget-object v10, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->d:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    iget v10, v10, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    int-to-long v10, v10

    add-long/2addr v4, v10

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 303
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    :try_start_2
    invoke-virtual {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v8

    .line 314
    :goto_0
    return-object v2

    .line 306
    :catch_0
    move-exception v2

    .line 307
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    :try_start_4
    invoke-virtual {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    .line 314
    :cond_0
    const/4 v2, 0x0

    monitor-exit v9

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 309
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->cloaseRandomAccessFileReadOnly()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public push(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.muvee.dsg.image.cache.file.thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->removeQuit(Ljava/lang/String;)V

    .line 171
    new-instance v1, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$2;-><init>(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method
