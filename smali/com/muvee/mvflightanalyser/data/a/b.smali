.class public Lcom/muvee/mvflightanalyser/data/a/b;
.super Ljava/lang/Object;
.source "MVFlightDataProcessor.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:D

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/lang/String;

.field private f:Ljava/io/RandomAccessFile;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "MVFlightDataProcessor"

    sput-object v0, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ","

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->b:Ljava/lang/String;

    .line 30
    const-wide v0, 0x412e848000000000L    # 1000000.0

    iput-wide v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->c:D

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)J
    .locals 4

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 902
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 903
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 904
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 906
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 912
    return-wide v0
.end method

.method private a(I)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 882
    new-array v1, p1, [B

    .line 885
    :try_start_0
    iget-object v2, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 896
    :goto_0
    return-object v0

    .line 888
    :catch_0
    move-exception v1

    .line 889
    sget-object v2, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readBytesWithSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    :catch_1
    move-exception v1

    .line 892
    sget-object v2, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readBytesWithSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 896
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;D)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    const-wide/16 v2, 0x0

    .line 420
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 421
    new-instance v4, Lcom/muvee/mvflightanalyser/data/structures/e;

    invoke-direct {v4}, Lcom/muvee/mvflightanalyser/data/structures/e;-><init>()V

    .line 423
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 424
    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 427
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 430
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 431
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 433
    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    int-to-long v8, v5

    or-long/2addr v6, v8

    .line 435
    if-nez v1, :cond_0

    .line 436
    long-to-double v2, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v8

    .line 439
    :cond_0
    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    sub-double/2addr v6, v2

    add-double v6, v6, p2

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->a:D

    .line 442
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 444
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 446
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 447
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 448
    int-to-float v5, v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 450
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 451
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 452
    int-to-float v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    div-float/2addr v6, v7

    .line 454
    float-to-double v8, v0

    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->j:D

    .line 455
    float-to-double v8, v5

    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->h:D

    .line 456
    float-to-double v6, v6

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->i:D

    .line 459
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 461
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 463
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->l:F

    .line 466
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 468
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 470
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->k:F

    .line 473
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0xe

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 476
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 478
    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 480
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 482
    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v8, v10

    .line 484
    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->b:D

    .line 485
    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->c:D

    .line 488
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 491
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 493
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 495
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->d:F

    .line 498
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 501
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 503
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 505
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 506
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 507
    int-to-float v5, v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 509
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 510
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 511
    int-to-float v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    div-float/2addr v6, v7

    .line 513
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->e:F

    .line 514
    iput v5, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->f:F

    .line 515
    iput v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->g:F

    .line 518
    const/4 v0, -0x1

    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->o:I

    .line 519
    const/4 v0, 0x0

    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->m:I

    .line 520
    const/4 v0, 0x0

    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->n:I

    .line 522
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v0, v1, 0x4

    move v1, v0

    goto/16 :goto_0

    .line 524
    :cond_1
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->e()Ljava/lang/String;

    .line 249
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    const-string v1, "endOfFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 255
    new-instance v2, Lcom/muvee/mvflightanalyser/data/structures/a;

    invoke-direct {v2}, Lcom/muvee/mvflightanalyser/data/structures/a;-><init>()V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->a:D

    .line 257
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->b:D

    .line 258
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->c:D

    .line 259
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->d:F

    .line 260
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->e:F

    .line 261
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->f:F

    .line 262
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->g:F

    .line 263
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->h:D

    .line 264
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->i:D

    .line 265
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->j:D

    .line 266
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->k:F

    .line 267
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->l:F

    .line 268
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/muvee/mvflightanalyser/data/structures/a;->m:F

    .line 270
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->d()Z

    .line 276
    return-void
.end method

.method private b(Ljava/util/ArrayList;D)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    const-wide/16 v2, 0x0

    .line 530
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 531
    new-instance v4, Lcom/muvee/mvflightanalyser/data/structures/e;

    invoke-direct {v4}, Lcom/muvee/mvflightanalyser/data/structures/e;-><init>()V

    .line 533
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 534
    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 537
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 540
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 542
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 544
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->d:F

    .line 547
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 549
    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4036000000000000L    # 22.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 551
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 553
    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x4036000000000000L    # 22.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v8, v10

    .line 555
    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->b:D

    .line 556
    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->c:D

    .line 559
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 562
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 564
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 566
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 567
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 568
    int-to-float v5, v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 570
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 571
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 572
    int-to-float v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    div-float/2addr v6, v7

    .line 574
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->e:F

    .line 575
    iput v5, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->f:F

    .line 576
    iput v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->g:F

    .line 579
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 582
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 584
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 586
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 587
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 588
    int-to-float v5, v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 590
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 591
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 592
    int-to-float v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    div-float/2addr v6, v7

    .line 594
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 595
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 596
    int-to-float v7, v7

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v7, v8

    .line 598
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v0, v5

    mul-float v10, v6, v7

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v12, v5, v5

    mul-float v13, v6, v6

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->i:D

    .line 599
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v0, v6

    mul-float v10, v7, v5

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->h:D

    .line 600
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v7

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    mul-float/2addr v0, v8

    float-to-double v8, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    float-to-double v6, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->j:D

    .line 603
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 606
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 608
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 610
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->l:F

    .line 613
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 615
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 617
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->k:F

    .line 620
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 623
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 624
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 625
    and-int/lit8 v0, v0, 0x7f

    .line 628
    const/4 v5, 0x5

    if-le v0, v5, :cond_0

    const/4 v0, 0x0

    .line 629
    :cond_0
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->o:I

    .line 632
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x7

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 635
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 638
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 639
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 641
    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    int-to-long v8, v5

    or-long/2addr v6, v8

    .line 643
    if-nez v1, :cond_1

    .line 644
    long-to-double v2, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v8

    .line 647
    :cond_1
    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    sub-double/2addr v6, v2

    add-double v6, v6, p2

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->a:D

    .line 650
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 652
    const/16 v5, 0x4532

    if-ne v0, v5, :cond_2

    .line 654
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0xe

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 657
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 658
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    .line 659
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->m:I

    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 663
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 664
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->n:I

    .line 670
    :goto_1
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v0, v1, 0x4

    move v1, v0

    goto/16 :goto_0

    .line 666
    :cond_2
    const/4 v0, 0x0

    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->m:I

    .line 667
    const/4 v0, 0x0

    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->n:I

    goto :goto_1

    .line 672
    :cond_3
    return-void
.end method

.method private c()V
    .locals 18

    .prologue
    .line 281
    const/4 v5, 0x0

    .line 282
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 284
    const-wide/16 v6, 0x0

    .line 285
    const/4 v4, 0x0

    .line 289
    const/4 v2, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 291
    :goto_0
    if-eqz v2, :cond_c

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 296
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 297
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 300
    const-string/jumbo v2, "pvat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    long-to-int v2, v10

    .line 302
    add-int/lit8 v2, v2, -0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 303
    new-instance v3, Lorg/json/JSONObject;

    new-instance v10, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    const-string v2, "filename"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/muvee/mvflightanalyser/data/a/b;->h:Ljava/lang/String;

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/data/a/b;->h:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 309
    array-length v11, v10

    const/4 v2, 0x0

    move/from16 v16, v2

    move-wide v2, v6

    move/from16 v6, v16

    :goto_1
    if-ge v6, v11, :cond_1

    aget-object v7, v10, v6

    .line 310
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x16

    if-ne v12, v13, :cond_0

    .line 311
    invoke-static {v7}, Lcom/muvee/mvflightanalyser/a/a;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v12

    .line 309
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 314
    :cond_1
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-wide/from16 v16, v2

    move-object v2, v6

    move-wide/from16 v6, v16

    .line 315
    goto :goto_0

    .line 318
    :cond_2
    const-string v2, "moov"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "trak"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mdia"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    :cond_3
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto/16 :goto_0

    .line 323
    :cond_4
    const-string v2, "hdlr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 326
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 327
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 329
    const-string v2, "meta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 331
    const/4 v2, 0x1

    .line 335
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0xc

    sub-long/2addr v10, v12

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 336
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v5, v2

    move-object v2, v3

    .line 337
    goto/16 :goto_0

    .line 340
    :cond_5
    if-eqz v5, :cond_b

    .line 341
    const-string v2, "minf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "stbl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 342
    :cond_6
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto/16 :goto_0

    .line 346
    :cond_7
    const-string/jumbo v2, "stsd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x32

    add-long/2addr v12, v14

    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 348
    const/16 v2, 0x1e

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 349
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 351
    const-string v2, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 352
    const/4 v2, 0x1

    .line 358
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x58

    sub-long/2addr v10, v12

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 359
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v4, v2

    move-object v2, v3

    .line 360
    goto/16 :goto_0

    .line 353
    :cond_8
    const-string v2, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 354
    const/4 v2, 0x2

    goto :goto_3

    .line 363
    :cond_9
    const-string/jumbo v2, "stco"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    const-wide/16 v12, 0x8

    add-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 367
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 369
    :goto_4
    if-eqz v2, :cond_c

    .line 370
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_4

    .line 378
    :cond_a
    const-string v2, "co64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    const-wide/16 v12, 0x8

    add-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 382
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 384
    :goto_5
    if-eqz v2, :cond_c

    .line 385
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 386
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_5

    .line 394
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x8

    sub-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 395
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto/16 :goto_0

    .line 399
    :cond_c
    const/4 v2, 0x1

    if-ne v4, v2, :cond_e

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v7}, Lcom/muvee/mvflightanalyser/data/a/b;->a(Ljava/util/ArrayList;D)V

    .line 408
    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/muvee/mvflightanalyser/data/a/b;->d()Z

    .line 414
    :goto_7
    return-void

    .line 401
    :cond_e
    const/4 v2, 0x2

    if-ne v4, v2, :cond_d

    .line 402
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v7}, Lcom/muvee/mvflightanalyser/data/a/b;->b(Ljava/util/ArrayList;D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_6

    .line 409
    :catch_0
    move-exception v2

    .line 410
    sget-object v3, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processParrotFlightData JSONException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 404
    :cond_f
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 405
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v7}, Lcom/muvee/mvflightanalyser/data/a/b;->c(Ljava/util/ArrayList;D)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 411
    :catch_1
    move-exception v2

    .line 412
    sget-object v3, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processParrotFlightData IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    move v2, v4

    goto/16 :goto_3

    :cond_11
    move v2, v5

    goto/16 :goto_2
.end method

.method private c(Ljava/util/ArrayList;D)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    const-wide/16 v2, 0x0

    .line 678
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 679
    new-instance v4, Lcom/muvee/mvflightanalyser/data/structures/e;

    invoke-direct {v4}, Lcom/muvee/mvflightanalyser/data/structures/e;-><init>()V

    .line 681
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 682
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 685
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 688
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 690
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 692
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->d:F

    .line 695
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 697
    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4036000000000000L    # 22.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 699
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 701
    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x4036000000000000L    # 22.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v8, v10

    .line 703
    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->b:D

    .line 704
    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->c:D

    .line 707
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 710
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 712
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 714
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 715
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 716
    int-to-float v5, v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 718
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 719
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 720
    int-to-float v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    div-float/2addr v6, v7

    .line 722
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->e:F

    .line 723
    iput v5, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->f:F

    .line 724
    iput v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->g:F

    .line 727
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 730
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 732
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 734
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 735
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 736
    int-to-float v5, v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 738
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 739
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 740
    int-to-float v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    div-float/2addr v6, v7

    .line 742
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 743
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 744
    int-to-float v7, v7

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v7, v8

    .line 746
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v0, v5

    mul-float v10, v6, v7

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v12, v5, v5

    mul-float v13, v6, v6

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->i:D

    .line 747
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v0, v6

    mul-float v10, v7, v5

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->h:D

    .line 748
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v7

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    mul-float/2addr v0, v8

    float-to-double v8, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    float-to-double v6, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->j:D

    .line 751
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 754
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 756
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 758
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->l:F

    .line 761
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 763
    int-to-float v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v0, v5

    .line 765
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->k:F

    .line 768
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 771
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 772
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 773
    and-int/lit8 v0, v0, 0x7f

    .line 776
    const/4 v5, 0x5

    if-le v0, v5, :cond_0

    const/4 v0, 0x0

    .line 777
    :cond_0
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->o:I

    .line 780
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x7

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 783
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 786
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 787
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 789
    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    int-to-long v8, v5

    or-long/2addr v6, v8

    .line 791
    if-nez v1, :cond_1

    .line 792
    long-to-double v2, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v8

    .line 795
    :cond_1
    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    sub-double/2addr v6, v2

    add-double v6, v6, p2

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->a:D

    .line 798
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 800
    const/16 v5, 0x4532

    if-ne v0, v5, :cond_2

    .line 802
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0xe

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 805
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 806
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    .line 807
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->m:I

    .line 810
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 811
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 812
    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->n:I

    .line 818
    :goto_1
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    add-int/lit8 v0, v1, 0x4

    move v1, v0

    goto/16 :goto_0

    .line 814
    :cond_2
    const/4 v0, 0x0

    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->m:I

    .line 815
    const/4 v0, 0x0

    iput v0, v4, Lcom/muvee/mvflightanalyser/data/structures/e;->n:I

    goto :goto_1

    .line 820
    :cond_3
    return-void
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    iput-boolean v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->g:Z

    .line 862
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 857
    :catch_0
    move-exception v1

    .line 858
    sget-object v2, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeFile Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 824
    iget-object v2, p0, Lcom/muvee/mvflightanalyser/data/a/b;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 825
    iget-boolean v2, p0, Lcom/muvee/mvflightanalyser/data/a/b;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/muvee/mvflightanalyser/data/a/b;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 850
    :goto_0
    return v0

    .line 830
    :cond_0
    iget-boolean v2, p0, Lcom/muvee/mvflightanalyser/data/a/b;->g:Z

    if-eqz v2, :cond_1

    .line 831
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->d()Z

    .line 834
    :cond_1
    iput-object p1, p0, Lcom/muvee/mvflightanalyser/data/a/b;->e:Ljava/lang/String;

    .line 836
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/muvee/mvflightanalyser/data/a/b;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    iput-boolean v1, p0, Lcom/muvee/mvflightanalyser/data/a/b;->g:Z

    .line 845
    :try_start_1
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v0, v1

    .line 850
    goto :goto_0

    .line 837
    :catch_0
    move-exception v1

    .line 838
    sget-object v2, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 846
    :catch_1
    move-exception v0

    .line 847
    sget-object v2, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFileAtPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 873
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    const-string v0, "endOfFile"

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 878
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->h:Ljava/lang/String;

    const-string v1, "Bebop_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "Bebop 2"

    .line 200
    :goto_0
    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->h:Ljava/lang/String;

    const-string v1, "Bebop_Drone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "Bebop 1"

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->h:Ljava/lang/String;

    const-string v1, "Disco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    const-string v0, "Disco"

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    if-nez p2, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/muvee/mvflightanalyser/data/a/b;->d(Ljava/lang/String;)Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->d:Ljava/util/ArrayList;

    .line 48
    sget-object v0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->kFlightDataTypeDJI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->b()V

    .line 54
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/b;->d:Ljava/util/ArrayList;

    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->kFlightDataTypeParrot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->c()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/muvee/mvflightanalyser/data/a/b;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    :goto_0
    return v0

    .line 69
    :cond_0
    const/4 v2, 0x4

    :try_start_0
    invoke-direct {p0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    .line 71
    :goto_1
    if-eqz v3, :cond_7

    .line 73
    invoke-direct {p0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 76
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 77
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 79
    const-string v3, "moov"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "trak"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mdia"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    :cond_1
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_1

    .line 84
    :cond_2
    const-string v3, "hdlr"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    iget-object v3, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 87
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 88
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 90
    const-string v3, "meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v1

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xc

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 97
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_1

    .line 101
    :cond_4
    if-eqz v2, :cond_8

    .line 102
    const-string v3, "minf"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "stbl"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    :cond_5
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_1

    .line 107
    :cond_6
    const-string/jumbo v3, "stsd"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 108
    iget-object v2, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 109
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 110
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 112
    const-string v2, "com.parrot.videometadata"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 123
    :cond_7
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    sget-object v2, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processParrotFlightData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 119
    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    add-long/2addr v4, v6

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 120
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)D
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-direct {p0, p1}, Lcom/muvee/mvflightanalyser/data/a/b;->d(Ljava/lang/String;)Z

    .line 222
    const-wide/16 v0, 0x0

    .line 224
    sget-object v2, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->kFlightDataTypeDJI:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->e()Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 227
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    const-string v3, "endOfFile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->e()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 237
    invoke-direct {p0, v1}, Lcom/muvee/mvflightanalyser/data/a/b;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 238
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 239
    sub-double/2addr v0, v2

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->d()Z

    .line 243
    return-wide v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/muvee/mvflightanalyser/data/a/b;->c(Ljava/lang/String;)D

    .line 134
    invoke-virtual {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)D
    .locals 13

    .prologue
    const-wide/16 v0, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/muvee/mvflightanalyser/data/a/b;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    :goto_0
    return-wide v0

    .line 147
    :cond_0
    const/4 v2, 0x4

    :try_start_0
    invoke-direct {p0, v2}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v4, v2

    move-wide v2, v0

    .line 149
    :goto_1
    if-eqz v4, :cond_4

    .line 151
    :try_start_1
    invoke-direct {p0, v4}, Lcom/muvee/mvflightanalyser/data/a/b;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 154
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 155
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 158
    const-string/jumbo v4, "pvat"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    long-to-int v4, v6

    .line 160
    add-int/lit8 v4, v4, -0x8

    invoke-direct {p0, v4}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 161
    new-instance v5, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v4, "filename"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/muvee/mvflightanalyser/data/a/b;->h:Ljava/lang/String;

    .line 166
    iget-object v4, p0, Lcom/muvee/mvflightanalyser/data/a/b;->h:Ljava/lang/String;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 167
    array-length v8, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    .line 168
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x16

    if-ne v10, v11, :cond_2

    .line 169
    invoke-static {v9}, Lcom/muvee/mvflightanalyser/a/a;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 170
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->d()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 175
    :cond_1
    cmpl-double v4, v2, v0

    if-lez v4, :cond_3

    move-wide v0, v2

    .line 181
    :goto_3
    :try_start_2
    invoke-direct {p0}, Lcom/muvee/mvflightanalyser/data/a/b;->d()Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    :goto_4
    sget-object v3, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTimestampFromEpochForFileAtPath JSONException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 178
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/data/a/b;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/muvee/mvflightanalyser/data/a/b;->a(I)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    goto/16 :goto_1

    .line 184
    :catch_1
    move-exception v2

    .line 185
    :goto_5
    sget-object v3, Lcom/muvee/mvflightanalyser/data/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTimestampFromEpochForFileAtPath IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 184
    :catch_2
    move-exception v0

    move-object v12, v0

    move-wide v0, v2

    move-object v2, v12

    goto :goto_5

    .line 182
    :catch_3
    move-exception v0

    move-object v12, v0

    move-wide v0, v2

    move-object v2, v12

    goto :goto_4

    :cond_4
    move-wide v0, v2

    goto :goto_3
.end method
