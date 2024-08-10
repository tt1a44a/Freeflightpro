.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;
.super Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsecutiveFrameTime"
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 310
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 311
    const/16 v0, 0x8

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->b:I

    .line 312
    const/4 v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    .line 314
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 315
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->e:Z

    .line 320
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 310
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 311
    const/16 v0, 0x8

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->b:I

    .line 312
    const/4 v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    .line 314
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 315
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->e:Z

    .line 326
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 327
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 310
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 311
    const/16 v0, 0x8

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->b:I

    .line 312
    const/4 v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    .line 314
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 315
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->e:Z

    .line 336
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 337
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->b:I

    .line 338
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 310
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 311
    const/16 v0, 0x8

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->b:I

    .line 312
    const/4 v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    .line 314
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 315
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->e:Z

    .line 352
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 353
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->b:I

    .line 354
    iput p3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    .line 355
    return-void
.end method


# virtual methods
.method public createIterator(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;J)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)V

    .line 476
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime$1;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;)V

    return-object v0
.end method

.method public getInTimeMs()J
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)J
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 362
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->e:Z

    if-eqz v0, :cond_1

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->e:Z

    .line 367
    :goto_0
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 368
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    .line 370
    sget-object v6, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$1;->a:[I

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 439
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 440
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_8

    move-wide v0, v4

    .line 443
    :cond_0
    :goto_1
    return-wide v0

    .line 365
    :cond_1
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->advance()Z

    goto :goto_0

    .line 372
    :pswitch_0
    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    .line 373
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 374
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    .line 375
    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    .line 377
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 380
    goto :goto_1

    .line 385
    :cond_2
    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    move-wide v0, v2

    .line 386
    goto :goto_1

    .line 389
    :pswitch_1
    cmp-long v6, v4, v0

    if-ltz v6, :cond_5

    .line 390
    iget v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 392
    iget v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->g:I

    packed-switch v6, :pswitch_data_1

    .line 428
    :pswitch_2
    cmp-long v0, v4, v0

    if-ltz v0, :cond_7

    .line 429
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 430
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    move-wide v0, v4

    .line 431
    goto :goto_1

    .line 394
    :pswitch_3
    sub-long v2, v4, v0

    iget-wide v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    sub-long/2addr v0, v6

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    .line 395
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->g:I

    .line 396
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    .line 397
    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    goto :goto_1

    .line 400
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->g:I

    move-wide v0, v4

    .line 401
    goto :goto_1

    .line 405
    :pswitch_4
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    .line 406
    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    .line 407
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 410
    goto :goto_1

    .line 413
    :pswitch_5
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->c:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    move-wide v0, v4

    .line 414
    goto :goto_1

    :cond_4
    move-wide v0, v2

    .line 416
    goto :goto_1

    .line 424
    :cond_5
    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    move-wide v0, v2

    .line 425
    goto :goto_1

    :cond_6
    move-wide v0, v2

    .line 433
    goto :goto_1

    :cond_7
    move-wide v0, v2

    .line 436
    goto :goto_1

    :cond_8
    move-wide v0, v2

    .line 443
    goto/16 :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 392
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 451
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 452
    iput v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->g:I

    .line 453
    iput v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->d:I

    .line 454
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$1;->a:[I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 462
    invoke-virtual {p1, v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 465
    :goto_0
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    .line 466
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::prepare: lastFrameTimeStamp=%d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iput-boolean v7, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->e:Z

    .line 468
    return-void

    .line 456
    :pswitch_0
    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    .line 459
    :pswitch_1
    invoke-virtual {p1, v0, v1, v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
