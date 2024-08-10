.class public Lcom/muvee/dsg/mams/image/cache/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->b:Ljava/lang/String;

    .line 47
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->c:I

    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->b:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->c:I

    .line 55
    invoke-direct {p0}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mams/image/cache/ImageCache;Ljava/lang/String;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(Ljava/lang/String;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 102
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    invoke-direct {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;-><init>()V

    .line 104
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 105
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    .line 106
    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.muvee.dsg.image.cache.file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x80

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.muvee.dsg.image.cache.thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;-><init>(Lcom/muvee/dsg/mams/image/cache/ImageCache;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 98
    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mams/image/cache/ImageCache;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->c:I

    return v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static createIdForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static getInSampleSize(Ljava/lang/String;IIF)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 225
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 226
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 227
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 228
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 229
    sget-object v1, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInSampleSize:: options.Width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " options.Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-int v2, p1, p2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 233
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 234
    sget-object v1, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInSampleSize:: options.inSampleSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_0
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return v0
.end method


# virtual methods
.method public getAsync(Ljava/lang/String;IILcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;)Z
    .locals 4

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    monitor-enter v3

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 162
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    if-eqz p4, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p4, v0}, Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;->onResultReady(Landroid/graphics/Bitmap;)V

    .line 166
    :cond_0
    const/4 v0, 0x1

    monitor-exit v3

    .line 191
    :goto_0
    return v0

    .line 168
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    monitor-enter v1

    .line 171
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    .line 173
    if-eqz v0, :cond_2

    .line 174
    new-instance v3, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;

    invoke-direct {v3, p0, p4, v2}, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;-><init>(Lcom/muvee/dsg/mams/image/cache/ImageCache;Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getAsync(Ljava/lang/String;Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;)Z

    move-result v0

    .line 187
    monitor-exit v1

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 189
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    monitor-enter v3

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 198
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v3

    .line 215
    :goto_0
    return-object v0

    .line 201
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    monitor-enter v1

    .line 204
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :try_start_2
    iget-object v4, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 211
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 201
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 210
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    .line 213
    :cond_1
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public push(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 116
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    monitor-enter v1

    .line 121
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    monitor-enter v1

    .line 126
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(II)Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    .line 128
    if-nez v0, :cond_2

    .line 129
    new-instance v3, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    invoke-direct {v3}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;-><init>()V

    .line 130
    iput p2, v3, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    .line 131
    iput p3, v3, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    .line 132
    if-eqz v3, :cond_2

    .line 133
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->b:Ljava/lang/String;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    .line 135
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->c:I

    new-instance v5, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    invoke-direct {v5}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;-><init>()V

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;-><init>(Ljava/lang/String;ILcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;)V

    .line 139
    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2
    invoke-virtual {v0, p1, p4}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->push(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 143
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 123
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
