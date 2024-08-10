.class public Lcom/muvee/dsg/mmas/api/image2video/Image2Video;
.super Ljava/lang/Object;
.source "Image2Video.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

.field private b:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

.field private c:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

.field private d:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;J)J
    .locals 1

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->e:J

    return-wide p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->c:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->c:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    iget v2, v2, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->height:I

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;-><init>(II)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->b:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    .line 57
    new-instance v0, Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;

    sget-object v1, Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;->NORMAL:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;-><init>(Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->d:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;

    .line 58
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->d:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;->validate()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a()V

    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->b:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    return-object v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/image2video/OutputParam;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->c:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    return-object v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->d:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;

    return-object v0
.end method


# virtual methods
.method public addBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 66
    new-instance v1, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;-><init>(Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;)V

    .line 68
    const-string v0, "Image2Video.GL_THREAD"

    new-instance v2, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;-><init>(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;Landroid/graphics/Bitmap;Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 85
    monitor-enter v1

    .line 86
    :try_start_0
    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;->a(Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 96
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public start(Lcom/muvee/dsg/mmas/api/image2video/OutputParam;Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    .line 30
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->init(Lcom/muvee/dsg/mmas/api/image2video/OutputParam;Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;)V

    .line 32
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->c:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    .line 34
    const-string v0, "Image2Video.GL_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;-><init>(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 44
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 53
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->stopRecording()V

    .line 100
    return-void
.end method
