.class public Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;
.super Ljava/lang/Object;
.source "MediaRegistry.java"


# static fields
.field private static final c:Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;


# instance fields
.field private a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;

.field private b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->c:Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    if-eqz v0, :cond_1

    .line 58
    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 59
    iget v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 60
    iget-object v0, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 64
    :goto_1
    return v0

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/16 v0, 0x64

    goto :goto_1
.end method

.method public static getInstance()Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->c:Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;

    return-object v0
.end method


# virtual methods
.method public getIntervalAt(IJI)J
    .locals 10

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    if-lez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    iget p4, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    .line 39
    if-eqz v1, :cond_2

    .line 40
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 41
    iget-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->effectInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 42
    iget v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v5, p2, v6

    if-ltz v5, :cond_1

    iget v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v4, p2, v4

    if-gtz v4, :cond_1

    .line 44
    invoke-direct {p0, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->a(Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;)I

    move-result v0

    .line 45
    const-string v1, "com.muvee.dsg.mmap.api.videoeditor.MediaRegistry"

    const-string v2, "::getIntervalAt: speedValue=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-wide/32 v2, 0xf4240

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    int-to-long v2, p4

    div-long/2addr v0, v2

    monitor-exit p0

    .line 52
    :goto_1
    return-wide v0

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const-wide/32 v0, 0xf4240

    int-to-long v2, p4

    div-long/2addr v0, v2

    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public register(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    .line 69
    return-void
.end method

.method public register([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
    .locals 1

    .prologue
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
