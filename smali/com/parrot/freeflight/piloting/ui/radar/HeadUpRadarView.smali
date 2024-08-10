.class public Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;
.super Landroid/view/View;
.source "HeadUpRadarView.java"


# static fields
.field private static final SQUARE_SIZE_IN_DP:I = 0xf

.field private static final SQUARE_STROKE_WIDTH:I = 0x4


# instance fields
.field private final mArrowPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBottomArrowBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBottomArrowPosition:Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBottomArrowVisible:Z

.field private mHeight2:I

.field private mHorizontalViewAngle:F

.field private final mLeftArrowBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLeftArrowPosition:Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLeftArrowVisible:Z

.field private mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRightArrowBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRightArrowPosition:Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRightArrowVisible:Z

.field private final mSquarePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSquarePosition:Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSquareSemiHeight:I

.field private mSquareSemiWidth:I

.field private mSquareSize:I

.field private mSquareVisible:Z

.field private mTargetDrone:Z

.field private final mTopArrowBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTopArrowPosition:Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTopArrowVisible:Z

.field private mVerticalViewAngle:F

.field private mWidth2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTargetDrone:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07034f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    .line 90
    const v1, 0x7f07034e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    .line 91
    const v1, 0x7f070350

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowBitmap:Landroid/graphics/Bitmap;

    .line 92
    const v1, 0x7f07034c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowBitmap:Landroid/graphics/Bitmap;

    .line 94
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    .line 95
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowPosition:Landroid/graphics/PointF;

    .line 96
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowPosition:Landroid/graphics/PointF;

    .line 97
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowPosition:Landroid/graphics/PointF;

    .line 98
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowPosition:Landroid/graphics/PointF;

    .line 100
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mArrowPaint:Landroid/graphics/Paint;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->update()V

    return-void
.end method

.method private getSourcePosition(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .param p1, "radar"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTargetDrone:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getFpvControllerPosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getDronePosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v0

    goto :goto_0
.end method

.method private getTargetPosition(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .param p1, "radar"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTargetDrone:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getDronePosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getFpvControllerPosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v0

    goto :goto_0
.end method

.method private update()V
    .locals 22

    .prologue
    .line 197
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareVisible:Z

    .line 198
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowVisible:Z

    .line 199
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowVisible:Z

    .line 200
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowVisible:Z

    .line 201
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowVisible:Z

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->isLocationAvailable()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->getSourcePosition(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v14

    .line 205
    .local v14, "sourcePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->getTargetPosition(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v15

    .line 207
    .local v15, "targetPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHorizontalViewAngle:F

    move/from16 v17, v0

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mVerticalViewAngle:F

    move/from16 v17, v0

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v17, v17, v18

    if-nez v17, :cond_5

    :cond_0
    const/4 v5, 0x1

    .line 208
    .local v5, "invalidCamera":Z
    :goto_0
    invoke-virtual {v14}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->isLocationAvailable()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v14}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->isOrientationAvailable()Z

    move-result v17

    if-nez v17, :cond_6

    :cond_1
    const/4 v6, 0x1

    .line 209
    .local v6, "invalidSource":Z
    :goto_1
    invoke-virtual {v15}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->isLocationAvailable()Z

    move-result v17

    if-nez v17, :cond_7

    const/4 v7, 0x1

    .line 211
    .local v7, "invalidTarget":Z
    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 212
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareVisible:Z

    .line 213
    const/4 v12, 0x0

    .line 215
    .local v12, "relativeBearing":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHorizontalViewAngle:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v4, v17, v18

    .line 216
    .local v4, "horizontalLimit":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mVerticalViewAngle:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v16, v17, v18

    .line 218
    .local v16, "verticalLimit":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTargetDrone:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 223
    invoke-virtual {v14, v15}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->bearingTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D

    move-result-wide v18

    invoke-virtual {v14}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->getYaw()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v12, v0

    .line 224
    const/high16 v17, -0x3ccc0000    # -180.0f

    cmpg-float v17, v12, v17

    if-gez v17, :cond_8

    .line 225
    const/high16 v17, 0x43b40000    # 360.0f

    add-float v12, v12, v17

    .line 257
    :cond_2
    :goto_3
    const-wide v2, 0x4056800000000000L    # 90.0

    .line 258
    .local v2, "currentPitch":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTargetDrone:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->isDroneVideoPitchStabilized()Z

    move-result v17

    if-nez v17, :cond_3

    .line 260
    invoke-virtual {v14}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->getPitch()D

    move-result-wide v18

    add-double v2, v2, v18

    .line 262
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getTilt()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v2, v2, v18

    .line 267
    :goto_4
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v17, v17, v4

    if-gez v17, :cond_c

    .line 268
    div-float v17, v12, v4

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mWidth2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v9, v17, v18

    .line 269
    .local v9, "posX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Landroid/graphics/PointF;->x:F

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Landroid/graphics/PointF;->x:F

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Landroid/graphics/PointF;->x:F

    .line 284
    .end local v9    # "posX":F
    :goto_5
    invoke-virtual {v14, v15}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->pitchTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D

    move-result-wide v18

    sub-double v18, v18, v2

    move-wide/from16 v0, v18

    double-to-float v13, v0

    .line 286
    .local v13, "relativePitch":F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v17, v17, v16

    if-gez v17, :cond_e

    .line 287
    neg-float v0, v13

    move/from16 v17, v0

    div-float v17, v17, v16

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHeight2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v10, v17, v18

    .line 288
    .local v10, "posY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Landroid/graphics/PointF;->y:F

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Landroid/graphics/PointF;->y:F

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Landroid/graphics/PointF;->y:F

    .line 302
    .end local v10    # "posY":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->isConnectedToEvinrude()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 303
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareVisible:Z

    .line 307
    .end local v2    # "currentPitch":D
    .end local v4    # "horizontalLimit":F
    .end local v5    # "invalidCamera":Z
    .end local v6    # "invalidSource":Z
    .end local v7    # "invalidTarget":Z
    .end local v12    # "relativeBearing":F
    .end local v13    # "relativePitch":F
    .end local v14    # "sourcePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .end local v15    # "targetPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .end local v16    # "verticalLimit":F
    :cond_4
    return-void

    .line 207
    .restart local v14    # "sourcePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .restart local v15    # "targetPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 208
    .restart local v5    # "invalidCamera":Z
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 209
    .restart local v6    # "invalidSource":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 226
    .restart local v4    # "horizontalLimit":F
    .restart local v7    # "invalidTarget":Z
    .restart local v12    # "relativeBearing":F
    .restart local v16    # "verticalLimit":F
    :cond_8
    const/high16 v17, 0x43340000    # 180.0f

    cmpl-float v17, v12, v17

    if-lez v17, :cond_2

    .line 227
    const/high16 v17, 0x43b40000    # 360.0f

    sub-float v12, v17, v12

    goto/16 :goto_3

    .line 232
    :cond_9
    invoke-virtual {v14, v15}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->bearingTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 241
    .local v8, "locationBearingTo":F
    invoke-virtual {v14, v15}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->bearingTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D

    move-result-wide v18

    invoke-virtual {v14}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->getYaw()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v12, v0

    .line 243
    move v11, v12

    .line 245
    .local v11, "rawBearing":F
    const/high16 v17, -0x3ccc0000    # -180.0f

    cmpg-float v17, v12, v17

    if-gez v17, :cond_a

    .line 246
    const/high16 v17, 0x43b40000    # 360.0f

    add-float v12, v12, v17

    goto/16 :goto_3

    .line 247
    :cond_a
    const/high16 v17, 0x43340000    # 180.0f

    cmpl-float v17, v12, v17

    if-lez v17, :cond_2

    .line 248
    const/high16 v17, 0x43b40000    # 360.0f

    sub-float v12, v17, v12

    goto/16 :goto_3

    .line 264
    .end local v8    # "locationBearingTo":F
    .end local v11    # "rawBearing":F
    .restart local v2    # "currentPitch":D
    :cond_b
    invoke-virtual {v14}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->getPitch()D

    move-result-wide v18

    sub-double v2, v2, v18

    goto/16 :goto_4

    .line 272
    :cond_c
    cmpl-float v17, v12, v4

    if-lez v17, :cond_d

    .line 273
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareVisible:Z

    .line 274
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowVisible:Z

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mWidth2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mWidth2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_5

    .line 278
    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareVisible:Z

    .line 279
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowVisible:Z

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mWidth2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mWidth2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_5

    .line 291
    .restart local v13    # "relativePitch":F
    :cond_e
    cmpl-float v17, v13, v16

    if-lez v17, :cond_f

    .line 292
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareVisible:Z

    .line 293
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowVisible:Z

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHeight2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHeight2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_6

    .line 297
    :cond_f
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareVisible:Z

    .line 298
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowVisible:Z

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHeight2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowPosition:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHeight2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_6
.end method


# virtual methods
.method public invalidate()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareVisible:Z

    if-eqz v1, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiWidth:I

    int-to-float v4, v4

    sub-float v2, v1, v4

    .line 119
    .local v2, "topLeftX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiHeight:I

    int-to-float v4, v4

    sub-float v3, v1, v4

    .line 120
    .local v3, "topLeftY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiWidth:I

    int-to-float v4, v4

    add-float v14, v1, v4

    .line 121
    .local v14, "topRightX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiHeight:I

    int-to-float v4, v4

    sub-float v15, v1, v4

    .line 122
    .local v15, "topRightY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiWidth:I

    int-to-float v4, v4

    sub-float v10, v1, v4

    .line 123
    .local v10, "bottomLeftX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiHeight:I

    int-to-float v4, v4

    add-float v11, v1, v4

    .line 124
    .local v11, "bottomLeftY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiWidth:I

    int-to-float v4, v4

    add-float v12, v1, v4

    .line 125
    .local v12, "bottomRightX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiHeight:I

    int-to-float v4, v4

    add-float v13, v1, v4

    .line 127
    .local v13, "bottomRightY":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    int-to-float v1, v1

    add-float v4, v2, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    int-to-float v1, v1

    add-float v5, v3, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 129
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    int-to-float v1, v1

    sub-float v7, v14, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v14

    move v6, v15

    move v8, v15

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    int-to-float v1, v1

    add-float v8, v15, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v14

    move v6, v15

    move v7, v14

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    int-to-float v1, v1

    add-float v7, v10, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v10

    move v6, v11

    move v8, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    int-to-float v1, v1

    sub-float v8, v11, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v10

    move v6, v11

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    int-to-float v1, v1

    sub-float v7, v12, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v12

    move v6, v13

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    int-to-float v1, v1

    sub-float v8, v13, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v12

    move v6, v13

    move v7, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 137
    .end local v2    # "topLeftX":F
    .end local v3    # "topLeftY":F
    .end local v10    # "bottomLeftX":F
    .end local v11    # "bottomLeftY":F
    .end local v12    # "bottomRightX":F
    .end local v13    # "bottomRightY":F
    .end local v14    # "topRightX":F
    .end local v15    # "topRightY":F
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowVisible:Z

    if-eqz v1, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mLeftArrowPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowVisible:Z

    if-eqz v1, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowVisible:Z

    if-eqz v1, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTopArrowPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowVisible:Z

    if-eqz v1, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 112
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    const v1, 0x3dcccccd    # 0.1f

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 159
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mWidth2:I

    .line 160
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHeight2:I

    .line 162
    int-to-float v0, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiWidth:I

    .line 163
    int-to-float v0, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSemiHeight:I

    .line 164
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mSquareSize:I

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowPosition:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowPosition:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mBottomArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 168
    return-void
.end method

.method public setRadar(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V
    .locals 2
    .param p1, "radar"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    if-eq p1, v0, :cond_0

    .line 172
    if-nez p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->removeListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->addListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V

    .line 178
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->update()V

    goto :goto_0
.end method

.method public setTargetDrone(Z)V
    .locals 1
    .param p1, "targetDrone"    # Z

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTargetDrone:Z

    if-eq v0, p1, :cond_0

    .line 185
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mTargetDrone:Z

    .line 186
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->update()V

    .line 188
    :cond_0
    return-void
.end method

.method public updateViewAngles(FF)V
    .locals 0
    .param p1, "horizontalViewAngle"    # F
    .param p2, "verticalViewAngle"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mHorizontalViewAngle:F

    .line 192
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->mVerticalViewAngle:F

    .line 193
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->update()V

    .line 194
    return-void
.end method
