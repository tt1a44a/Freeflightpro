.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;
.super Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameCountFrameTime"
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:J

.field private d:I

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 509
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b:I

    .line 499
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->c:J

    .line 500
    const/16 v0, 0xa

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d:I

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->f:Ljava/util/List;

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a:Z

    .line 505
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    .line 506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->h:J

    .line 510
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 513
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b:I

    .line 499
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->c:J

    .line 500
    const/16 v0, 0xa

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d:I

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->f:Ljava/util/List;

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a:Z

    .line 505
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    .line 506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->h:J

    .line 514
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d:I

    .line 515
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 520
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b:I

    .line 499
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->c:J

    .line 500
    const/16 v0, 0xa

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d:I

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->f:Ljava/util/List;

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a:Z

    .line 505
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    .line 506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->h:J

    .line 521
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d:I

    .line 522
    iput-wide p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    .line 523
    iput-wide p4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->h:J

    .line 524
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)J
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;J)J
    .locals 1

    .prologue
    .line 497
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;Z)Z
    .locals 0

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b:I

    return v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)Ljava/util/List;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)J
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    return-wide v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d:I

    return v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I
    .locals 2

    .prologue
    .line 497
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b:I

    return v0
.end method


# virtual methods
.method public createIterator(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;J)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    sub-long v0, p2, v0

    .line 531
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->h:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->h:J

    cmp-long v2, v4, p2

    if-gez v2, :cond_0

    .line 532
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->h:J

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    sub-long/2addr v0, v4

    .line 539
    :cond_0
    iput v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b:I

    .line 540
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    invoke-virtual {p1, v4, v5, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 542
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v3

    .line 543
    :goto_0
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d:I

    if-ge v2, v4, :cond_1

    .line 545
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g:J

    int-to-long v6, v2

    mul-long/2addr v6, v0

    iget v8, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 546
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->c:J

    .line 550
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a:Z

    .line 551
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;J)V

    return-object v2
.end method
