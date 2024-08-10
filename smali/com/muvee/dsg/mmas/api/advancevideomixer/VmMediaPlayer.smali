.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;,
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;,
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;,
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/Runnable;

.field private a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

.field private b:J

.field private c:J

.field private d:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;

.field private h:Landroid/media/MediaExtractor;

.field private i:Landroid/media/MediaCodec;

.field private j:Landroid/media/MediaFormat;

.field private k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

.field private o:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

.field private p:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

.field private q:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

.field private r:Z

.field private s:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->q:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->r:Z

    .line 95
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->s:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    .line 257
    iput-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->t:J

    .line 258
    iput-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->u:J

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->x:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;
    .locals 5

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    .line 387
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 388
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 389
    const-string v3, "mime"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 392
    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->j:Landroid/media/MediaFormat;

    .line 396
    :goto_1
    return-object v0

    .line 387
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->C:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->g:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmMediaPlayer.OUTPUT_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmMediaPlayer.INPUT_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->z:I

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->m:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmMediaPlayer.GL_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->B:I

    return v0
.end method

.method private f()J
    .locals 6

    .prologue
    .line 260
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v1, "::currentPlayTimeUs: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->t:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->t:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->A:I

    return v0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 317
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v1, "::initDecoder:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 323
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->z:I

    .line 325
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->b:J

    .line 327
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 330
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    .line 331
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;

    .line 343
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;-><init>(II)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l:Z

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 349
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->x:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    invoke-virtual {v2, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->createSurface(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 377
    :goto_1
    return-void

    .line 353
    :cond_1
    :try_start_1
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    .line 354
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;->setUp(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 356
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->EXTERNAL:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->o:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    .line 357
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->o:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->validate()V

    .line 359
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->NORMAL:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    .line 360
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->validate()V

    .line 362
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->j:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    .line 365
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->j:Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->A:I

    .line 366
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->j:Landroid/media/MediaFormat;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->B:I

    .line 368
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->j:Landroid/media/MediaFormat;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 369
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 371
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v1, "::initDecoder: videoDecoder=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->s:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    return-object v0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->o:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    return-object v0
.end method

.method static synthetic j(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    return-object v0
.end method

.method static synthetic k(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->q:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    return-object v0
.end method

.method static synthetic l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    return-object v0
.end method

.method static synthetic m(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->g()V

    return-void
.end method

.method static synthetic n(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->o:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->o:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->release()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->p:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->release()V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;->release()V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 140
    :cond_4
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v1, "::closeDecoder: %d,ownEglSetup=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 142
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    invoke-virtual {v2, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->destroySurface(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->makeCurrent()V

    .line 149
    :cond_6
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l:Z

    if-eqz v0, :cond_8

    .line 150
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    if-eqz v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->release()V

    .line 153
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    .line 154
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 157
    :cond_8
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 159
    const-string v0, "VmMediaPlayer.RESUME_AFTER"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->y:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->y:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;->onComplete()V

    .line 164
    :cond_9
    return-void
.end method

.method protected a(ZJ)V
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 268
    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->w:J

    .line 269
    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c:J

    .line 270
    iput-wide p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->v:J

    .line 271
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 274
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p2, p3, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide v8, v0

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->loop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 280
    if-ltz v1, :cond_5

    .line 281
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    .line 282
    iget-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->w:J

    cmp-long v0, v2, v10

    if-gez v0, :cond_0

    .line 283
    iput-wide v10, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->w:J

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    aget-object v2, v7, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 286
    if-lez v3, :cond_3

    .line 287
    add-long v4, v8, v10

    .line 288
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 294
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 295
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    if-gez v0, :cond_1

    .line 296
    add-long/2addr v8, v10

    .line 297
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_1
    move-wide v0, v8

    .line 300
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    if-gez v2, :cond_2

    .line 301
    iget-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->v:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_2

    .line 302
    iput-wide v10, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->v:J

    :cond_2
    :goto_1
    move-wide v8, v0

    .line 309
    goto :goto_0

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_4
    :goto_2
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    move-wide v0, v8

    goto :goto_1
.end method

.method public addSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    return-void
.end method

.method protected b()V
    .locals 20

    .prologue
    .line 168
    const-string v2, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v3, "::pullFrames:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-wide/16 v4, -0x1

    .line 171
    const-wide/16 v2, -0x1

    .line 173
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->loop()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 175
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v12, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v13

    .line 176
    if-ltz v13, :cond_0

    .line 177
    iget v6, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 179
    :goto_1
    if-eqz v6, :cond_c

    .line 182
    const-string v7, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v8, "::pullFrames:before waiting"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-wide v8, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->v:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 185
    const/4 v6, 0x0

    move/from16 v18, v6

    move-wide v6, v4

    move-wide v4, v2

    move/from16 v2, v18

    .line 227
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->q:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    monitor-enter v3

    .line 228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v8, v8, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v9, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-ne v8, v9, :cond_7

    .line 229
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 255
    return-void

    .line 177
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 187
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    monitor-enter v8

    .line 188
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v7, v7, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v9, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v7, v9, :cond_4

    .line 190
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :cond_4
    :goto_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f()J

    move-result-wide v10

    .line 200
    const-string v7, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v8, "::pullFrames: currentTimeUs=%d,presentationTimeUs=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x1

    iget-wide v0, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v9, v14

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_b

    move-wide v8, v10

    .line 206
    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    .line 207
    iget-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 210
    :cond_5
    sub-long v4, v10, v8

    add-long/2addr v4, v2

    .line 211
    iget-wide v10, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v7, v10, v4

    if-ltz v7, :cond_6

    .line 212
    iget-wide v10, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v4, v10, v4

    .line 213
    const-string v7, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v10, "::pullFrames: timeDiffUs=%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 214
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 213
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-wide/16 v10, 0x3e8

    :try_start_4
    div-long/2addr v4, v10

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    move-wide v4, v2

    move v2, v6

    move-wide v6, v8

    .line 221
    goto/16 :goto_2

    .line 191
    :catch_0
    move-exception v7

    .line 193
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 196
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 217
    :catch_1
    move-exception v4

    .line 219
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 222
    :cond_6
    const/4 v4, 0x0

    move-wide v6, v8

    move-wide/from16 v18, v2

    move v2, v4

    move-wide/from16 v4, v18

    goto/16 :goto_2

    .line 231
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i:Landroid/media/MediaCodec;

    invoke-virtual {v8, v13, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 232
    if-eqz v2, :cond_9

    .line 234
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->q:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 235
    iget-wide v8, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c:J

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

    if-eqz v2, :cond_8

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c:J

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v8, v9}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;->onCurrentTimeUpdate(Ljava/lang/Object;J)V

    .line 239
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->r:Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 245
    :cond_9
    :goto_7
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 247
    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 248
    const-string v2, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v3, "::pullFrames:done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 240
    :catch_2
    move-exception v2

    .line 242
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 245
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    :cond_a
    move-wide v2, v4

    move-wide v4, v6

    goto/16 :goto_0

    :cond_b
    move-wide v8, v4

    goto/16 :goto_5

    :cond_c
    move/from16 v18, v6

    move-wide v6, v4

    move-wide v4, v2

    move/from16 v2, v18

    goto/16 :goto_2
.end method

.method public getCodecOutputSurface()Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    return-object v0
.end method

.method public getCurrentTimeUs()J
    .locals 2

    .prologue
    .line 874
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .prologue
    .line 895
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->b:J

    return-wide v0
.end method

.method public getOnCurrentTimeUpdateListener()Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

    return-object v0
.end method

.method public getPreviewFeature()Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->s:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    return-object v0
.end method

.method public getRenderLock()Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->q:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    return-object v0
.end method

.method public getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;
    .locals 6

    .prologue
    .line 870
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n:Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;->getTextureId()I

    move-result v1

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->EXTERNAL:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    iget v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->z:I

    iget v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->B:I

    iget v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->A:I

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;-><init>(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;III)V

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public isFrameReady()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->r:Z

    return v0
.end method

.method public isLooped()Z
    .locals 4

    .prologue
    .line 911
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c:J

    iget-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->w:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 627
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 854
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    monitor-enter v1

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-ne v0, v2, :cond_1

    .line 857
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->C:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "VmMediaPlayer.RESUME_AFTER"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 862
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->t:J

    .line 864
    :cond_1
    monitor-exit v1

    .line 865
    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play(ZZJ)V
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 651
    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->w:J

    .line 652
    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c:J

    .line 653
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-eq v0, v2, :cond_1

    .line 659
    monitor-exit v1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 663
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->t:J

    .line 664
    if-eqz p2, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->resume()V

    .line 667
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;ZJ)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 667
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 893
    return-void
.end method

.method public removeSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 843
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    monitor-enter v1

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-ne v0, v2, :cond_0

    .line 845
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 846
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->u:J

    .line 847
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 849
    :cond_0
    monitor-exit v1

    .line 850
    return-void

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeAfter(J)V
    .locals 5

    .prologue
    .line 901
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$4;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$4;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->C:Ljava/lang/Runnable;

    .line 907
    const-string v0, "VmMediaPlayer.RESUME_AFTER"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->C:Ljava/lang/Runnable;

    const-wide/32 v2, 0xf4240

    div-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 908
    return-void
.end method

.method public seek(J)V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 787
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-eq v0, v2, :cond_1

    .line 789
    monitor-exit v1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 792
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;J)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 792
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setEglSetup(Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l:Z

    .line 66
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->m:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setOnCompleListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->y:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;

    .line 839
    return-void
.end method

.method public setOnCurrentTimeUpdateListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

    .line 886
    return-void
.end method

.method public setOnFrameAvailableListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->g:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;

    .line 744
    return-void
.end method

.method public setPreviewFeature(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->s:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    .line 922
    return-void
.end method

.method public stop(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V
    .locals 6

    .prologue
    .line 771
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    monitor-enter v1

    .line 772
    :try_start_0
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmMediaPlayer"

    const-string v2, "::stop: %s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v5, v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-ne v0, v2, :cond_1

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 775
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 777
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->y:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;

    .line 779
    return-void

    .line 777
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
