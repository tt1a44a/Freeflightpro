.class public Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;
.super Landroid/widget/LinearLayout;
.source "DirectorBottomBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;,
        Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;,
        Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$BottomBarTab;
    }
.end annotation


# static fields
.field public static final DIRECTOR_DURATION:I = 0x0

.field public static final DIRECTOR_FLIGHT_DATA:I = 0x4

.field public static final DIRECTOR_MOMENTS:I = 0x3

.field public static final DIRECTOR_MUSIC:I = 0x2

.field public static final DIRECTOR_PREVIEW:I = 0x5

.field public static final DIRECTOR_STYLE:I = 0x1

.field private static final STROKE_WIDTH:I = 0x3


# instance fields
.field private mCursorPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCursorPath:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDataTabView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDurationTabView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMomentsTabView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMusicTabView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreviewTabView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedListener:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSelectedTab:I
    .annotation build Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$BottomBarTab;
    .end annotation
.end field

.field private mStyleTabView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTopBorderPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->init()V

    .line 90
    return-void
.end method

.method private getTabLayout(I)Landroid/view/View;
    .locals 1
    .param p1, "tab"    # I
        .annotation build Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$BottomBarTab;
        .end annotation
    .end param

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 305
    const/4 v0, 0x0

    .line 309
    .local v0, "res":Landroid/view/View;
    :goto_0
    return-object v0

    .line 287
    .end local v0    # "res":Landroid/view/View;
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mDurationTabView:Landroid/view/View;

    .line 288
    .restart local v0    # "res":Landroid/view/View;
    goto :goto_0

    .line 290
    .end local v0    # "res":Landroid/view/View;
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mStyleTabView:Landroid/view/View;

    .line 291
    .restart local v0    # "res":Landroid/view/View;
    goto :goto_0

    .line 293
    .end local v0    # "res":Landroid/view/View;
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mMusicTabView:Landroid/view/View;

    .line 294
    .restart local v0    # "res":Landroid/view/View;
    goto :goto_0

    .line 296
    .end local v0    # "res":Landroid/view/View;
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mMomentsTabView:Landroid/view/View;

    .line 297
    .restart local v0    # "res":Landroid/view/View;
    goto :goto_0

    .line 299
    .end local v0    # "res":Landroid/view/View;
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mDataTabView:Landroid/view/View;

    .line 300
    .restart local v0    # "res":Landroid/view/View;
    goto :goto_0

    .line 302
    .end local v0    # "res":Landroid/view/View;
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mPreviewTabView:Landroid/view/View;

    .line 303
    .restart local v0    # "res":Landroid/view/View;
    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private init()V
    .locals 4

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 211
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mDurationTabView:Landroid/view/View;

    .line 212
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mStyleTabView:Landroid/view/View;

    .line 213
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mMusicTabView:Landroid/view/View;

    .line 214
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mMomentsTabView:Landroid/view/View;

    .line 215
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mDataTabView:Landroid/view/View;

    .line 216
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mPreviewTabView:Landroid/view/View;

    .line 219
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPaint:Landroid/graphics/Paint;

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05012e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mTopBorderPaint:Landroid/graphics/Paint;

    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mTopBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0500a8

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mTopBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mDurationTabView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$1;-><init>(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mStyleTabView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$2;-><init>(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mMusicTabView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$3;-><init>(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mMomentsTabView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$4;-><init>(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mDataTabView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$5;-><init>(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mPreviewTabView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$6;-><init>(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mDurationTabView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 275
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mStyleTabView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 276
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mMusicTabView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 277
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mMomentsTabView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 278
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mDataTabView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 279
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mPreviewTabView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 280
    return-void
.end method


# virtual methods
.method public getCurrentTab()I
    .locals 1
    .annotation build Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$BottomBarTab;
    .end annotation

    .prologue
    .line 166
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    return v0
.end method

.method public nextTab()I
    .locals 3
    .annotation build Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$BottomBarTab;
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    .line 181
    .local v0, "res":I
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 104
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getTabLayout(I)Landroid/view/View;

    move-result-object v8

    .line 106
    .local v8, "currentLayout":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 107
    .local v7, "bottom":I
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 108
    .local v9, "left":I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v14

    .line 109
    .local v14, "right":I
    const/16 v16, 0x0

    .line 111
    .local v16, "top":I
    int-to-float v1, v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 114
    .local v11, "middleY":F
    const/4 v10, 0x0

    .line 115
    .local v10, "leftOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->previousTab()I

    move-result v13

    .line 116
    .local v13, "previousTab":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    if-eq v13, v1, :cond_0

    .line 117
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getTabLayout(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v10, v9, v1

    .line 121
    :cond_0
    const/4 v15, 0x0

    .line 122
    .local v15, "rightOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->nextTab()I

    move-result v12

    .line 123
    .local v12, "nextTab":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    if-eq v12, v1, :cond_1

    .line 124
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->getTabLayout(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v15, v1, v14

    .line 128
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    sub-int v2, v9, v10

    int-to-float v2, v2

    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    int-to-float v2, v14

    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    add-int v2, v14, v15

    int-to-float v2, v2

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    int-to-float v2, v14

    int-to-float v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    sub-int v2, v9, v10

    int-to-float v2, v2

    int-to-float v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    int-to-float v2, v9

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    sub-int v2, v9, v10

    int-to-float v2, v2

    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mCursorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 140
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mWidth:I

    int-to-float v4, v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mTopBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mWidth:I

    .line 96
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 154
    move-object v0, p1

    check-cast v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;

    .line 155
    .local v0, "ss":Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 156
    iget v1, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;->mTab:I

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->selectTab(I)V

    .line 157
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 147
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 148
    .local v0, "ss":Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;
    iget v2, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    iput v2, v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$SavedState;->mTab:I

    .line 149
    return-object v0
.end method

.method public previousTab()I
    .locals 1
    .annotation build Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$BottomBarTab;
    .end annotation

    .prologue
    .line 171
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    .line 172
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 173
    add-int/lit8 v0, v0, -0x1

    .line 175
    :cond_0
    return v0
.end method

.method public selectTab(I)V
    .locals 2
    .param p1, "tab"    # I
        .annotation build Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$BottomBarTab;
        .end annotation
    .end param

    .prologue
    .line 192
    const/4 v0, 0x1

    .line 194
    .local v0, "selected":Z
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedListener:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedListener:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;->onNavigationItemSelected(I)Z

    move-result v0

    .line 198
    :cond_0
    if-eqz v0, :cond_1

    .line 199
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedTab:I

    .line 200
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->invalidate()V

    .line 202
    :cond_1
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->mSelectedListener:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;

    .line 189
    return-void
.end method
