.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;
.super Ljava/lang/Object;
.source "VideoFrameGenerator.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;

.field private c:Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;

.field private d:Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;

.field private e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

.field private f:Landroid/media/MediaCodec;

.field private g:Landroid/media/MediaFormat;

.field private h:Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;

.field private i:Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;

.field private j:Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;

.field private k:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;

.field private l:I

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

.field private r:J

.field private s:Landroid/media/MediaCodec;

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->o:Ljava/util/Map;

    .line 58
    iput-boolean v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->p:Z

    .line 65
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->q:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    .line 563
    iput v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->v:I

    .line 564
    iput v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->w:I

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)Landroid/media/MediaFormat;
    .locals 5

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getTrackCount()I

    move-result v2

    .line 396
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 397
    invoke-virtual {p1, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 398
    const-string v3, "mime"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {p1, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->selectTrack(I)V

    .line 401
    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g:Landroid/media/MediaFormat;

    .line 405
    :goto_1
    return-object v0

    .line 396
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;)V
    .locals 1

    .prologue
    .line 567
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->c:Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;

    .line 568
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;->a()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->w:I

    .line 569
    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;

    .line 77
    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->d:Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;

    .line 561
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i()V

    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->q:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoFrameGenerator.OUTPUT_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->l:I

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoFrameGenerator.INPUT_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->m:I

    return v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoFrameGenerator.GL_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized generateFrame(Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;)V
    .locals 5

    .prologue
    .line 94
    const-class v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v2, "::generateFrame:start2016 06 28 0445PM "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;-><init>()V

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->p:Z

    .line 98
    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;)V

    .line 99
    invoke-direct {v0, p2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;)V

    .line 100
    invoke-direct {v0, p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;)V

    .line 102
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    invoke-direct {v4, v0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 155
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :try_start_3
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v2, "::generateFrame:end"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    monitor-exit v1

    return-void

    .line 158
    :catch_0
    move-exception v3

    .line 159
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 160
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->p:Z

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->w:I

    return v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->s:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->v:I

    return v0
.end method

.method private i()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v1, 0x60

    const/4 v6, 0x0

    .line 303
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 304
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 305
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->v:I

    .line 307
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 309
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    .line 310
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)Landroid/media/MediaFormat;

    .line 313
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g:Landroid/media/MediaFormat;

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->t:I

    .line 314
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g:Landroid/media/MediaFormat;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->u:I

    .line 315
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g:Landroid/media/MediaFormat;

    const-string v2, "durationUs"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->r:J

    .line 316
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v2, "::initDecoder: videoDuration=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->c:Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;->frameSize:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->t:I

    iget v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->u:I

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;->getOutWidth(II)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->l:I

    .line 319
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->c:Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;->frameSize:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->t:I

    iget v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->u:I

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;->getOutHeight(II)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->m:I

    .line 321
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->l:I

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->l:I

    .line 322
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->m:I

    if-gtz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->m:I

    .line 324
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->l:I

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->m:I

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;-><init>(II)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->h:Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;

    .line 326
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i:Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;

    .line 327
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i:Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;->setUp(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 329
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->j:Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;

    .line 338
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->c:Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;->frameEffect:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;

    .line 339
    :goto_2
    if-eqz v0, :cond_2

    .line 340
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->j:Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;->prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;)V

    .line 341
    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;->getNext()Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;

    move-result-object v0

    goto :goto_2

    .line 321
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->l:I

    goto :goto_0

    .line 322
    :cond_1
    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->m:I

    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->j:Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->validate()V

    .line 346
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    .line 349
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->l:I

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->m:I

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;-><init>(II)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->k:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;

    .line 351
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g:Landroid/media/MediaFormat;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i:Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 352
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 354
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->j()V

    .line 364
    return-void
.end method

.method static synthetic j(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->t:I

    return v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 372
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->s:Landroid/media/MediaCodec;

    .line 374
    const-string/jumbo v0, "video/avc"

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 375
    const-string v1, "bitrate"

    const v2, 0x5b8d80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 376
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 377
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 378
    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 379
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->s:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->u:I

    return v0
.end method

.method static synthetic l(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i:Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;

    return-object v0
.end method

.method static synthetic m(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->j:Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;

    return-object v0
.end method

.method static synthetic n(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->k:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;

    return-object v0
.end method

.method static synthetic o(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->d:Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->k:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;->release()V

    .line 181
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->j:Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->release()V

    .line 182
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i:Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;->release()V

    .line 183
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->h:Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->release()V

    .line 185
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->release()V

    .line 186
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 188
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->h()V

    .line 192
    return-void
.end method

.method protected b()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->p:Z

    if-nez v0, :cond_4

    .line 213
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 214
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 215
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v5, "::pullFrames: dequeueOutputBuffer=%d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-ltz v4, :cond_0

    .line 217
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->q:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    monitor-enter v5

    .line 219
    :try_start_0
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n:Ljava/util/List;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 221
    :goto_0
    sget-object v6, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v7, "::pullFrames: size=%d,flags=%d,presentationTimeUs=%d,render=%b"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    invoke-virtual {v6, v4, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 224
    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->q:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v6, v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;J)J

    .line 227
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->o:Ljava/util/Map;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 228
    if-eqz v0, :cond_1

    .line 229
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->q:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->q:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n:Ljava/util/List;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n:Ljava/util/List;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    :cond_3
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v12, :cond_0

    .line 247
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v1, "::pullFrames:done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 219
    goto/16 :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected c()V
    .locals 14

    .prologue
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 258
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 261
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->c:Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;->frameTime:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->r:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;->createIterator(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;J)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;

    move-result-object v8

    .line 263
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->p:Z

    if-nez v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 265
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v3, "::pushFrames: dequeueInputBuffer=%d"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-ltz v1, :cond_0

    .line 268
    invoke-interface {v8}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;->hasNext()Z

    move-result v0

    .line 269
    sget-object v3, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v4, "::pushFrames: hasNext = %b"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-interface {v8, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;->next(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)J

    move-result-wide v4

    .line 272
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v3, "::pushFrames: needToRender=%d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    cmp-long v0, v4, v12

    if-ltz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->o:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;->getInTimeMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    aget-object v3, v7, v1

    invoke-virtual {v0, v3, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 279
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v4, "::pushFrames: readSampleData=%d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-lez v3, :cond_2

    .line 281
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    move v3, v2

    move-wide v4, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 297
    :cond_3
    :goto_1
    return-void

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f:Landroid/media/MediaCodec;

    move v3, v2

    move-wide v4, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 411
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a:Ljava/lang/String;

    const-string v1, "::onFrameAvailable:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 557
    return-void
.end method
