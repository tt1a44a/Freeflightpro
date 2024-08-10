.class public Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;
.super Ljava/lang/Object;
.source "DecoderBoosterEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/booster/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;,
        Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;


# instance fields
.field private b:[Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->a:Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->c:Z

    .line 37
    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    if-eqz v0, :cond_1

    .line 98
    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 99
    iget v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 100
    iget-object v0, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 104
    :goto_1
    return v0

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/16 v0, 0x64

    goto :goto_1
.end method

.method public static getEngine()Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->a:Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->b:[Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->c:Z

    .line 110
    return-void
.end method

.method public isSupport()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->c:Z

    return v0
.end method

.method public prepare([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
    .locals 10

    .prologue
    .line 45
    const-string v0, "com.muvee.dsg.mmapcodec.booster.DecoderBoosterEngine"

    const-string v1, "::prepare: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "+"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->c:Z

    .line 48
    array-length v0, p1

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->b:[Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    .line 49
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 50
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->b:[Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    new-instance v2, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;-><init>(Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$1;)V

    aput-object v2, v1, v0

    .line 53
    :try_start_0
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 54
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaPath:Ljava/lang/String;

    .line 56
    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 59
    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 60
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 67
    :cond_0
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    if-eqz v1, :cond_3

    .line 68
    const/4 v1, 0x0

    :goto_2
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 69
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v3, v3, v1

    .line 70
    invoke-direct {p0, v3}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->a(Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;)I

    move-result v4

    .line 71
    const-string v5, "com.muvee.dsg.mmapcodec.booster.DecoderBoosterEngine"

    const-string v6, "::prepare: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/16 v5, 0x320

    if-ge v4, v5, :cond_2

    .line 68
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_2
    new-instance v4, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;-><init>(Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$1;)V

    .line 78
    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->effectInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 79
    iget v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const/4 v5, 0x1

    invoke-virtual {v2, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 80
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;->a:J

    .line 81
    iget v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v7, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 82
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;->b:J

    .line 83
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->b:[Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 87
    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 49
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 86
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 92
    :cond_4
    const-string v0, "com.muvee.dsg.mmapcodec.booster.DecoderBoosterEngine"

    const-string v1, "::prepare: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "-"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public useBooster(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->b:[Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    if-eqz v0, :cond_0

    .line 115
    iget-wide v0, p3, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mSourceId:J

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->b:[Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    array-length v3, v3

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->b:[Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;

    iget-wide v4, p3, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mSourceId:J

    long-to-int v1, v4

    aget-object v3, v0, v1

    .line 117
    iget-object v0, v3, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    move v1, v2

    .line 118
    :goto_0
    iget-object v0, v3, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 119
    iget-object v0, v3, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;

    .line 120
    iget-wide v4, v0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;->a:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    iget-wide v4, v0, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine$a;->b:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 122
    const/4 v2, 0x1

    .line 128
    :cond_0
    return v2

    .line 118
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
