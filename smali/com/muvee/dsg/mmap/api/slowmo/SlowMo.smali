.class public Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;
.super Ljava/lang/Object;
.source "SlowMo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static a([Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;)[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 185
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 186
    aget-object v2, p0, v0

    iget v2, v2, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->saveStart:I

    aget-object v4, p0, v0

    iget v4, v4, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->saveDuration:I

    add-int/2addr v4, v2

    move v2, v1

    .line 187
    :goto_1
    aget-object v5, p0, v0

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 189
    new-instance v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;-><init>()V

    .line 190
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->effectType:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->effectType:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 191
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->startTime:I

    iput v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->startTime:I

    .line 192
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->duration:I

    iput v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->duration:I

    .line 193
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->speedForUniformEffect:I

    iput v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->speedForUniformEffect:I

    .line 206
    iget v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveStartTime:I

    if-gtz v6, :cond_0

    .line 208
    iput v1, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveStartTime:I

    .line 209
    if-lez v2, :cond_0

    .line 210
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->startTime:I

    iput v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveStartTime:I

    .line 212
    :cond_0
    iget v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveDuration:I

    if-gtz v6, :cond_1

    .line 214
    const/4 v6, -0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveDuration:I

    .line 215
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 216
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->startTime:I

    iget v7, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveStartTime:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveDuration:I

    .line 221
    :cond_1
    :goto_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_2
    iget v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveStartTime:I

    sub-int v6, v4, v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;->saveDuration:I

    goto :goto_2

    .line 185
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 224
    :cond_4
    new-array v0, v1, [Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;

    return-object v0
.end method

.method public static changeFrameRate(Ljava/lang/String;Ljava/lang/String;ILcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->nativeChangeFrameRate(Ljava/lang/String;Ljava/lang/String;ILcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)I

    .line 147
    return-void
.end method

.method public static multiSlowMotionEx(Ljava/lang/String;Ljava/lang/String;[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;ILcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;-><init>()V

    .line 126
    array-length v1, p2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->nativeInit(Ljava/lang/String;Ljava/lang/String;[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;I)I

    .line 127
    invoke-virtual {v0, p4}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->save(Lcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)V

    .line 128
    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->unInit()V

    .line 130
    return-void
.end method

.method public static multiSlowMotionExSimple(Ljava/lang/String;Ljava/lang/String;[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExSimpleParams;ILcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method private native nativeCancel()I
.end method

.method private static native nativeChangeFrameRate(Ljava/lang/String;Ljava/lang/String;ILcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)I
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;I)I
.end method

.method private native nativeSave(Lcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)I
.end method

.method private native nativeUnInit()I
.end method

.method public static slowMotionEx(Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;IIIILcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 52
    new-array v0, v2, [Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;

    new-instance v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;-><init>()V

    aput-object v1, v0, v4

    .line 53
    aget-object v1, v0, v4

    iput p3, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->saveStart:I

    .line 54
    aget-object v1, v0, v4

    iput p4, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->saveDuration:I

    .line 55
    aget-object v1, v0, v4

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;-><init>()V

    aput-object v3, v2, v4

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    .line 56
    aget-object v1, v0, v4

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    aget-object v1, v1, v4

    iput-object p2, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->effectType:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 57
    aget-object v1, v0, v4

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    aget-object v1, v1, v4

    iput p5, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->startTime:I

    .line 58
    aget-object v1, v0, v4

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;->effectParams:[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;

    aget-object v1, v1, v4

    iput p6, v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMoEffectParam;->duration:I

    .line 60
    new-instance v1, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;-><init>()V

    .line 61
    invoke-virtual {v1, p0, p1, v0}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->init(Ljava/lang/String;Ljava/lang/String;[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;)V

    .line 62
    invoke-virtual {v1, p7}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->save(Lcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)V

    .line 63
    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->unInit()V

    .line 64
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->nativeCancel()I

    .line 243
    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;)V
    .locals 2

    .prologue
    .line 178
    invoke-static {p3}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->a([Lcom/muvee/dsg/mmap/api/slowmo/SlowMoParam;)[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;

    move-result-object v0

    .line 180
    array-length v1, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->nativeInit(Ljava/lang/String;Ljava/lang/String;[Lcom/muvee/dsg/mmap/api/slowmo/SlowMoExParams;I)I

    .line 181
    return-void
.end method

.method public save(Lcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->nativeSave(Lcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)I

    .line 237
    return-void
.end method

.method public unInit()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/slowmo/SlowMo;->nativeUnInit()I

    .line 231
    return-void
.end method
