.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;
    }
.end annotation


# static fields
.field public static final SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final SAMPLE_FLAG_SYNC:I = 0x1

.field public static final SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final SEEK_TO_PREVIOUS_SYNC:I

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/media/MediaExtractor;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a:Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    .line 281
    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;)Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;

    .line 251
    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;-><init>(Ljava/lang/String;I)V

    .line 254
    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_0
    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 245
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v2, p1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public advance()Z
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampleFlags()I
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    monitor-exit v1

    return v0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampleTime()J
    .locals 4

    .prologue
    .line 396
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampleTimeAfterSeekTo(JI)J
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->d:Ljava/lang/String;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->e:I

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->f:Ljava/lang/String;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->d:Ljava/lang/String;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->e:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackCount()I
    .locals 2

    .prologue
    .line 408
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    monitor-exit v1

    return v0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .prologue
    .line 438
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized seekTo(JI)V
    .locals 7

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->d:Ljava/lang/String;

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->e:I

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->f:Ljava/lang/String;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->d:Ljava/lang/String;

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->e:I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a(JI)J

    move-result-wide v2

    .line 381
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 391
    :cond_1
    :try_start_3
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seekTo: toSeekUs = = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    monitor-exit p0

    return-void
.end method

.method public selectTrack(I)V
    .locals 4

    .prologue
    .line 420
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 423
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->e:I

    .line 424
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->d:Ljava/lang/String;

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->e:I

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->f:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->d:Ljava/lang/String;

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->e:I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    monitor-enter v1

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 293
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->d:Ljava/lang/String;

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
