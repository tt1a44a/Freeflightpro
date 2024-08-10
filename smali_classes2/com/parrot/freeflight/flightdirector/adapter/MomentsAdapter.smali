.class public final Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MomentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;,
        Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;,
        Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MOMENTS_UNSELECT_MARGINE:I = 0xbb8

.field private static final MOMENTS_MERGE_DURATION:I = 0x1f4


# instance fields
.field private mAdapterListener:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBitmaps:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mComparator:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFrameStep:I

.field private mHeight:F

.field private mHighlightSegments:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoDuration:J

.field private mWidth:F


# direct methods
.method public constructor <init>(ILcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;)V
    .locals 2
    .param p1, "frameStep"    # I
    .param p2, "listener"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The frame step cannot be below or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    .line 54
    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mAdapterListener:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mComparator:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mAdapterListener:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mBitmaps:Ljava/util/List;

    return-object p1
.end method

.method private addMomentToHighlights(JJ)V
    .locals 19
    .param p1, "startMs"    # J
    .param p3, "endMs"    # J

    .prologue
    .line 309
    const/4 v13, 0x0

    .line 310
    .local v13, "momentWasAdded":Z
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 311
    const-wide/16 p1, 0x0

    .line 314
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mVideoDuration:J

    cmp-long v2, p3, v2

    if-lez v2, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mVideoDuration:J

    move-wide/from16 p3, v0

    .line 318
    :cond_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_6

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvdronecomposer/HighlightSegment;

    iget-wide v2, v2, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v10, v2

    .line 320
    .local v10, "highlightStart":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvdronecomposer/HighlightSegment;

    iget-wide v2, v2, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v8, v2

    .line 321
    .local v8, "highlightEnd":J
    cmp-long v2, p1, v10

    if-ltz v2, :cond_3

    cmp-long v2, p3, v8

    if-gtz v2, :cond_3

    .line 322
    const/4 v13, 0x0

    .line 349
    .end local v8    # "highlightEnd":J
    .end local v10    # "highlightStart":J
    :cond_2
    :goto_1
    return-void

    .line 324
    .restart local v8    # "highlightEnd":J
    .restart local v10    # "highlightStart":J
    :cond_3
    cmp-long v2, p3, v10

    if-ltz v2, :cond_5

    cmp-long v2, p3, v8

    if-gtz v2, :cond_5

    .line 325
    const/4 v13, 0x1

    .line 326
    move-wide/from16 v10, p1

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    new-instance v2, Lcom/muvee/mvdronecomposer/HighlightSegment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFilePath:Ljava/lang/String;

    long-to-double v4, v10

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    .line 330
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/muvee/mvdronecomposer/HighlightSegment;

    invoke-virtual {v6}, Lcom/muvee/mvdronecomposer/HighlightSegment;->getEndTime()D

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/muvee/mvdronecomposer/HighlightSegment;-><init>(Ljava/lang/String;DD)V

    .line 327
    invoke-interface {v14, v12, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 333
    :cond_5
    cmp-long v2, p1, v10

    if-ltz v2, :cond_4

    cmp-long v2, p1, v8

    if-gtz v2, :cond_4

    .line 334
    const/4 v13, 0x1

    .line 335
    move-wide/from16 v8, p3

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    new-instance v2, Lcom/muvee/mvdronecomposer/HighlightSegment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    .line 338
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/muvee/mvdronecomposer/HighlightSegment;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/HighlightSegment;->getStartTime()D

    move-result-wide v4

    long-to-double v6, v8

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v16

    invoke-direct/range {v2 .. v7}, Lcom/muvee/mvdronecomposer/HighlightSegment;-><init>(Ljava/lang/String;DD)V

    .line 336
    invoke-interface {v14, v12, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 344
    .end local v8    # "highlightEnd":J
    .end local v10    # "highlightStart":J
    :cond_6
    if-nez v13, :cond_2

    .line 345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    new-instance v2, Lcom/muvee/mvdronecomposer/HighlightSegment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFilePath:Ljava/lang/String;

    move-wide/from16 v0, p1

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    move-wide/from16 v0, p3

    long-to-double v6, v0

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v16

    invoke-direct/range {v2 .. v7}, Lcom/muvee/mvdronecomposer/HighlightSegment;-><init>(Ljava/lang/String;DD)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private mergeHighlights()V
    .locals 10

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, "newHighlights":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 356
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvdronecomposer/HighlightSegment;

    iget-wide v4, v3, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    mul-double/2addr v4, v8

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    .line 357
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvdronecomposer/HighlightSegment;

    iget-wide v6, v3, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x407f400000000000L    # 500.0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_0

    .line 359
    new-instance v2, Lcom/muvee/mvdronecomposer/HighlightSegment;

    invoke-direct {v2}, Lcom/muvee/mvdronecomposer/HighlightSegment;-><init>()V

    .line 360
    .local v2, "segment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/muvee/mvdronecomposer/HighlightSegment;->setVideoFilePath(Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvdronecomposer/HighlightSegment;

    iget-wide v4, v3, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    invoke-virtual {v2, v4, v5}, Lcom/muvee/mvdronecomposer/HighlightSegment;->setStartTime(D)V

    .line 362
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvdronecomposer/HighlightSegment;

    iget-wide v4, v3, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    invoke-virtual {v2, v4, v5}, Lcom/muvee/mvdronecomposer/HighlightSegment;->setEndTime(D)V

    .line 363
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    .line 353
    .end local v2    # "segment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    :cond_1
    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    .line 370
    return-void
.end method

.method private notifyHighlightChanged()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mAdapterListener:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;->onHighlightsChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 225
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->notifyDataSetChanged()V

    .line 226
    return-void
.end method


# virtual methods
.method public cancelScanTask()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mTask:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mTask:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mTask:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->cancel(Z)Z

    .line 306
    :cond_0
    return-void
.end method

.method public clearBitmaps()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mBitmaps:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 297
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 300
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mBitmaps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    goto :goto_0
.end method

.method public getSelectedHighLights()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    return-object v0
.end method

.method public isSelected(II)Z
    .locals 18
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 272
    const/4 v10, 0x0

    .line 275
    .local v10, "isSelected":Z
    const/4 v11, 0x3

    move/from16 v0, p1

    if-lt v0, v11, :cond_1

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->getItemCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    move/from16 v0, p1

    if-ge v0, v11, :cond_1

    .line 278
    add-int/lit8 v4, p1, -0x3

    .line 279
    .local v4, "currentMomentPosition":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    mul-int/2addr v11, v4

    int-to-long v6, v11

    .line 280
    .local v6, "currentMomentStartDuration":J
    long-to-float v11, v6

    move/from16 v0, p2

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    add-float/2addr v11, v14

    float-to-long v2, v11

    .line 282
    .local v2, "currentCenter":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    if-nez v10, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/muvee/mvdronecomposer/HighlightSegment;

    iget-wide v14, v11, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-long v12, v14

    .line 284
    .local v12, "startTime":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/muvee/mvdronecomposer/HighlightSegment;

    iget-wide v14, v11, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-long v8, v14

    .line 285
    .local v8, "endTime":J
    cmp-long v11, v2, v12

    if-ltz v11, :cond_0

    cmp-long v11, v2, v8

    if-gtz v11, :cond_0

    .line 286
    const/4 v10, 0x1

    .line 282
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "currentCenter":J
    .end local v4    # "currentMomentPosition":I
    .end local v5    # "i":I
    .end local v6    # "currentMomentStartDuration":J
    .end local v8    # "endTime":J
    .end local v12    # "startTime":J
    :cond_1
    return v10
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->onBindViewHolder(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;I)V
    .locals 28
    .param p1, "holder"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 109
    const/16 v17, 0x3

    move/from16 v0, p2

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    new-instance v14, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHeight:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 112
    .local v14, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 113
    .end local v14    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->getItemCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x3

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 114
    new-instance v14, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHeight:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 115
    .restart local v14    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 118
    .end local v14    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    new-instance v14, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHeight:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 120
    .restart local v14    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mBitmaps:Ljava/util/List;

    move-object/from16 v17, v0

    add-int/lit8 v23, p2, -0x3

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    add-int/lit8 v17, p2, -0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v22, v0

    mul-int v17, v17, v22

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 124
    .local v18, "startTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v18, v22

    .line 126
    .local v20, "stopTime":J
    const/4 v7, 0x0

    .line 127
    .local v7, "isLeftEdgeFound":Z
    const/4 v8, 0x0

    .line 128
    .local v8, "isRightEdgeFound":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/muvee/mvdronecomposer/HighlightSegment;

    .line 129
    .local v6, "highlightSegment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    iget-wide v0, v6, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_4

    iget-wide v0, v6, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_4

    .line 130
    const/4 v7, 0x1

    .line 131
    iget-wide v0, v6, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v13, v0

    .line 132
    .local v13, "offset":I
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    .local v11, "ivAlphaLeftParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 136
    .end local v11    # "ivAlphaLeftParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "offset":I
    :cond_4
    iget-wide v0, v6, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_b

    iget-wide v0, v6, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_b

    .line 137
    if-eqz v8, :cond_a

    .line 154
    .end local v6    # "highlightSegment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_f

    .line 158
    const/4 v12, 0x0

    .line 159
    .local v12, "leftHeartVisible":Z
    const/4 v15, 0x0

    .line 160
    .local v15, "rightHeartVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/muvee/mvdronecomposer/HighlightSegment;

    .line 161
    .local v16, "segment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L    # 1000.0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v4, v0

    .line 162
    .local v4, "highlightCenter":J
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 163
    .local v3, "heartWidth":I
    int-to-float v0, v3

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v2, v0

    .line 165
    .local v2, "heartSizes":I
    div-int/lit8 v22, v2, 0x2

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v4

    cmp-long v22, v22, v18

    if-ltz v22, :cond_d

    div-int/lit8 v22, v2, 0x2

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v4, v22

    cmp-long v22, v22, v20

    if-gtz v22, :cond_d

    .line 166
    sub-long v22, v4, v18

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v13, v0

    .line 167
    .restart local v13    # "offset":I
    int-to-float v0, v13

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    cmpg-float v22, v22, v23

    if-gez v22, :cond_c

    .line 168
    const/4 v12, 0x1

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 171
    .local v9, "ivAddLeftParams":Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v22, v3, 0x2

    sub-int v22, v13, v22

    move/from16 v0, v22

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 172
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 173
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v9    # "ivAddLeftParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "offset":I
    :cond_7
    :goto_2
    if-eqz v12, :cond_6

    if-eqz v15, :cond_6

    .line 205
    .end local v2    # "heartSizes":I
    .end local v3    # "heartWidth":I
    .end local v4    # "highlightCenter":J
    .end local v12    # "leftHeartVisible":Z
    .end local v15    # "rightHeartVisible":Z
    .end local v16    # "segment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    :cond_8
    :goto_3
    if-nez v7, :cond_9

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_9
    if-nez v8, :cond_0

    .line 210
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$600(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 139
    .restart local v6    # "highlightSegment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    :cond_a
    const/4 v8, 0x1

    .line 140
    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v22, v0

    iget-wide v0, v6, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L    # 1000.0

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v13, v0

    .line 141
    .restart local v13    # "offset":I
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$600(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$600(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    .restart local v11    # "ivAlphaLeftParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 144
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$600(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 145
    .end local v11    # "ivAlphaLeftParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "offset":I
    :cond_b
    iget-wide v0, v6, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_3

    iget-wide v0, v6, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_3

    .line 146
    const/4 v7, 0x1

    .line 147
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    .restart local v11    # "ivAlphaLeftParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 175
    .end local v6    # "highlightSegment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    .end local v11    # "ivAlphaLeftParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "heartSizes":I
    .restart local v3    # "heartWidth":I
    .restart local v4    # "highlightCenter":J
    .restart local v12    # "leftHeartVisible":Z
    .restart local v13    # "offset":I
    .restart local v15    # "rightHeartVisible":Z
    .restart local v16    # "segment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    :cond_c
    const/4 v15, 0x1

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    .restart local v9    # "ivAddLeftParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v13

    div-int/lit8 v23, v3, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 179
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 183
    .end local v9    # "ivAddLeftParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "offset":I
    :cond_d
    if-nez v12, :cond_e

    .line 184
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 186
    .restart local v9    # "ivAddLeftParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 187
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 188
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .end local v9    # "ivAddLeftParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e
    if-nez v15, :cond_7

    .line 191
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    .local v10, "ivAddRightParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 194
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 195
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 202
    .end local v2    # "heartSizes":I
    .end local v3    # "heartWidth":I
    .end local v4    # "highlightCenter":J
    .end local v10    # "ivAddRightParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "leftHeartVisible":Z
    .end local v15    # "rightHeartVisible":Z
    .end local v16    # "segment":Lcom/muvee/mvdronecomposer/HighlightSegment;
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v17

    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00cc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onItemClick(IIZZ)V
    .locals 26
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "allowLike"    # Z
    .param p4, "isNotFilled"    # Z

    .prologue
    .line 230
    const/16 v20, 0x3

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->getItemCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x3

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    :cond_0
    const/16 v16, 0x1

    .line 233
    .local v16, "invalidItem":Z
    :goto_0
    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_6

    .line 234
    add-int/lit8 v10, p1, -0x3

    .line 235
    .local v10, "currentMomentPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v20, v0

    mul-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v12, v0

    .line 236
    .local v12, "currentMomentStartDuration":J
    long-to-float v0, v12

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-long v8, v0

    .line 238
    .local v8, "currentCenter":J
    const/16 v17, 0x0

    .line 239
    .local v17, "isOnAnExistingMoment":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    if-nez v17, :cond_5

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/muvee/mvdronecomposer/HighlightSegment;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v18, v0

    .line 241
    .local v18, "startTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/muvee/mvdronecomposer/HighlightSegment;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v14, v0

    .line 242
    .local v14, "endTime":J
    add-long v20, v18, v14

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 244
    .local v6, "centerTime":J
    const-wide/16 v20, 0xbb8

    sub-long v20, v6, v20

    cmp-long v20, v8, v20

    if-ltz v20, :cond_3

    const-wide/16 v20, 0xbb8

    add-long v20, v20, v6

    cmp-long v20, v8, v20

    if-gtz v20, :cond_3

    const/16 v17, 0x1

    .line 247
    :goto_2
    if-eqz v17, :cond_1

    .line 248
    if-nez p3, :cond_4

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mAdapterListener:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;

    move-object/from16 v20, v0

    long-to-float v0, v6

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mVideoDuration:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    const v23, 0x461c4000    # 10000.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;->onHighlightClick(J)V

    .line 239
    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 231
    .end local v6    # "centerTime":J
    .end local v8    # "currentCenter":J
    .end local v10    # "currentMomentPosition":I
    .end local v11    # "i":I
    .end local v12    # "currentMomentStartDuration":J
    .end local v14    # "endTime":J
    .end local v16    # "invalidItem":Z
    .end local v17    # "isOnAnExistingMoment":Z
    .end local v18    # "startTime":J
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 244
    .restart local v6    # "centerTime":J
    .restart local v8    # "currentCenter":J
    .restart local v10    # "currentMomentPosition":I
    .restart local v11    # "i":I
    .restart local v12    # "currentMomentStartDuration":J
    .restart local v14    # "endTime":J
    .restart local v16    # "invalidItem":Z
    .restart local v17    # "isOnAnExistingMoment":Z
    .restart local v18    # "startTime":J
    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    .line 251
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mComparator:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->notifyHighlightChanged()V

    goto :goto_3

    .line 258
    .end local v6    # "centerTime":J
    .end local v14    # "endTime":J
    .end local v18    # "startTime":J
    :cond_5
    if-eqz p3, :cond_6

    if-nez v17, :cond_6

    .line 259
    if-eqz p4, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v8, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->addMomentToHighlights(JJ)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mComparator:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mergeHighlights()V

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->notifyHighlightChanged()V

    .line 269
    .end local v8    # "currentCenter":J
    .end local v10    # "currentMomentPosition":I
    .end local v11    # "i":I
    .end local v12    # "currentMomentStartDuration":J
    .end local v17    # "isOnAnExistingMoment":Z
    :cond_6
    :goto_4
    return-void

    .line 265
    .restart local v8    # "currentCenter":J
    .restart local v10    # "currentMomentPosition":I
    .restart local v11    # "i":I
    .restart local v12    # "currentMomentStartDuration":J
    .restart local v17    # "isOnAnExistingMoment":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mAdapterListener:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;->onHighlightsLimit()V

    goto :goto_4
.end method

.method public setItemSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 89
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mWidth:F

    .line 90
    iput p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHeight:F

    .line 91
    return-void
.end method

.method public setVideoDuration(J)V
    .locals 1
    .param p1, "videoDuration"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mVideoDuration:J

    .line 95
    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "highlights":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->cancelScanTask()V

    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFilePath:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mAdapterListener:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;->onStartScan()V

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mHighlightSegments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->notifyHighlightChanged()V

    .line 76
    new-instance v0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mFrameStep:I

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mTask:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->mTask:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method
