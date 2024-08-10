.class public Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;
.super Landroid/view/View;
.source "RadarFollowMeView.java"


# static fields
.field private static final ANGLE_0:I = 0x0

.field private static final ANGLE_180:I = 0xb4

.field private static final ANGLE_270:I = 0x10e

.field private static final ANGLE_360:I = 0x168

.field private static final ANGLE_45:I = 0x2d

.field private static final ANGLE_90:I = 0x5a

.field private static final DEFAULT_ARC_PADDING_IN_DP:I = 0x5

.field private static final DEFAULT_BACKGROUND_CIRCLE_COLOR:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_BIG_MARK_SIZE_IN_DP:I = 0xa

.field private static final DEFAULT_CIRCLE_MARK_STROKE_SIZE_IN_DP:I = 0x1

.field private static final DEFAULT_CIRCLE_STROKE_SIZE_IN_DP:I = 0x2

.field private static final DEFAULT_DRAWABLE_SIZE_IN_DP:I = 0x14

.field private static final DEFAULT_DRONE_TINT_COLOR:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_INNER_CIRCLE_COLOR:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_INNER_CIRCLE_COUNT:I = 0x2

.field private static final DEFAULT_MARKED_CIRCLE_COLOR:I = -0x1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_RED_MARK_COLOR:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_RED_MARK_STROKE_SIZE_IN_DP:I = 0x5

.field private static final DEFAULT_TEXT_PADDING_IN_DP:I = 0x5

.field private static final DEFAULT_TEXT_SIZE_IN_SP:I = 0x10


# instance fields
.field private mArcPadding:F

.field private final mArcRect:Landroid/graphics/RectF;

.field private final mBackgroundCirclePaint:Landroid/graphics/Paint;

.field private final mCardinalEast:Ljava/lang/String;

.field private mCardinalMarkHeight:I

.field private final mCardinalNorth:Ljava/lang/String;

.field private final mCardinalSouth:Ljava/lang/String;

.field private final mCardinalWest:Ljava/lang/String;

.field private mCenterX:F

.field private mCenterY:F

.field private final mCircleMarkPaint:Landroid/graphics/Paint;

.field private mCompassRotation:F

.field private mDoubleArcPadding:F

.field private mDrawableSize:F

.field private mDroneDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mInnerCircleCount:I

.field private final mInnerCirclePaint:Landroid/graphics/Paint;

.field private final mMarkedCirclePaint:Landroid/graphics/Paint;

.field private mMarkedCircleRadius:F

.field private mMovingUserDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRadius:F

.field private final mRedMarkPaint:Landroid/graphics/Paint;

.field private mShowDrone:Z

.field private mStaticUserDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTextHeight:I

.field private mTextPadding:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextRect:Landroid/graphics/Rect;

.field private mUserMoving:Z

.field private final mUserRect:Landroid/graphics/Rect;

.field private mUserRotation:F

.field private mVisionDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVisionRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "#33000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->DEFAULT_BACKGROUND_CIRCLE_COLOR:I

    .line 30
    const-string v0, "#33ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->DEFAULT_INNER_CIRCLE_COLOR:I

    .line 32
    const-string v0, "#FF003D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->DEFAULT_RED_MARK_COLOR:I

    .line 34
    const-string v0, "#00FF8A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->DEFAULT_DRONE_TINT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 113
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mShowDrone:Z

    .line 115
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 116
    .local v8, "resources":Landroid/content/res/Resources;
    const v11, 0x7f110608

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalNorth:Ljava/lang/String;

    .line 117
    const v11, 0x7f110607

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalEast:Ljava/lang/String;

    .line 118
    const v11, 0x7f110609

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalSouth:Ljava/lang/String;

    .line 119
    const v11, 0x7f11060a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalWest:Ljava/lang/String;

    .line 121
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    .line 122
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCirclePaint:Landroid/graphics/Paint;

    .line 123
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCircleMarkPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v11, Landroid/graphics/Paint;

    const/16 v12, 0x41

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPaint:Landroid/graphics/Paint;

    .line 125
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCirclePaint:Landroid/graphics/Paint;

    .line 126
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRedMarkPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRect:Landroid/graphics/Rect;

    .line 128
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextRect:Landroid/graphics/Rect;

    .line 129
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mArcRect:Landroid/graphics/RectF;

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    sget-object v12, Lcom/parrot/freeflight/R$styleable;->RadarFollowMeView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 133
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v11, 0x8

    const/4 v12, -0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 135
    .local v5, "mainColor":I
    const/16 v11, 0xc

    sget v12, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->DEFAULT_INNER_CIRCLE_COLOR:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 137
    .local v9, "secondaryColor":I
    const/4 v11, 0x1

    sget v12, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->DEFAULT_BACKGROUND_CIRCLE_COLOR:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 138
    .local v2, "backgroundColor":I
    const/16 v11, 0xe

    const/4 v12, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    .line 139
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 138
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 140
    .local v3, "circleStrokeWidth":I
    const/16 v11, 0x9

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    .line 141
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 140
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 142
    .local v6, "markStrokeWidth":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/high16 v13, 0x41200000    # 10.0f

    .line 143
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 142
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalMarkHeight:I

    .line 144
    const/16 v11, 0x10

    const/4 v12, 0x2

    const/high16 v13, 0x41800000    # 16.0f

    .line 145
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 144
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 146
    .local v10, "textSize":I
    const/16 v11, 0xf

    const/4 v12, 0x1

    const/high16 v13, 0x40a00000    # 5.0f

    .line 147
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 146
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPadding:F

    .line 148
    const/4 v11, 0x7

    const/4 v12, 0x2

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCircleCount:I

    .line 149
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCompassRotation:F

    .line 150
    const/4 v11, 0x4

    const/4 v12, 0x1

    const/high16 v13, 0x41a00000    # 20.0f

    .line 151
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 150
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDrawableSize:F

    .line 152
    const/16 v11, 0xd

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mStaticUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMovingUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    const/16 v11, 0x11

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserMoving:Z

    .line 155
    const/16 v11, 0x12

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRotation:F

    .line 156
    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    const/16 v11, 0x13

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionRotation:F

    .line 158
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/high16 v13, 0x40a00000    # 5.0f

    .line 159
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 158
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mArcPadding:F

    .line 160
    const/16 v11, 0xb

    const/4 v12, 0x1

    const/high16 v13, 0x40a00000    # 5.0f

    .line 161
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 160
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 162
    .local v7, "redMarkStrokeSize":I
    const/4 v11, 0x6

    sget v12, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->DEFAULT_DRONE_TINT_COLOR:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 163
    .local v4, "droneTintColor":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCirclePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCircleMarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCirclePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v12, v10

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 177
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCirclePaint:Landroid/graphics/Paint;

    int-to-float v12, v3

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCircleMarkPaint:Landroid/graphics/Paint;

    int-to-float v12, v6

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCirclePaint:Landroid/graphics/Paint;

    int-to-float v12, v6

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRedMarkPaint:Landroid/graphics/Paint;

    sget v12, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->DEFAULT_RED_MARK_COLOR:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRedMarkPaint:Landroid/graphics/Paint;

    int-to-float v12, v7

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f070528

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mArcPadding:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDoubleArcPadding:F

    .line 187
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 188
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v4, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 191
    :cond_0
    return-void
.end method

.method private calculateTextSize(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private drawArcAndText(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 318
    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mArcPadding:F

    add-float v2, v0, v1

    .line 319
    .local v2, "startAngle":F
    const/high16 v0, 0x42b40000    # 90.0f

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDoubleArcPadding:F

    sub-float v3, v0, v1

    .line 320
    .local v3, "sweepAngle":F
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPadding:F

    sub-float v6, v0, v1

    .line 321
    .local v6, "textY":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mArcRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCirclePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 322
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 323
    return-void
.end method


# virtual methods
.method public getCompassRotation()F
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCompassRotation:F

    return v0
.end method

.method public getVisionRotation()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionRotation:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 247
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRadius:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 248
    .local v9, "padding":F
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRadius:F

    sub-float/2addr v2, v9

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 251
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCircleCount:I

    if-lez v0, :cond_0

    .line 252
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCircleCount:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 253
    .local v8, "innerCircleRadiusStep":F
    move v7, v8

    .line 254
    .local v7, "innerCircleRadius":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCircleCount:I

    if-ge v6, v0, :cond_0

    .line 255
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    add-float/2addr v7, v8

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 260
    .end local v6    # "i":I
    .end local v7    # "innerCircleRadius":F
    .end local v8    # "innerCircleRadiusStep":F
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCirclePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 261
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mInnerCirclePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 263
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mShowDrone:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 266
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionRotation:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionRotation:F

    neg-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mStaticUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserMoving:Z

    if-nez v0, :cond_2

    .line 275
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRotation:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mStaticUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRotation:F

    neg-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMovingUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserMoving:Z

    if-eqz v0, :cond_3

    .line 282
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRotation:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMovingUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRotation:F

    neg-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 288
    :cond_3
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRadius:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    div-float v9, v0, v1

    .line 289
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRadius:F

    sub-float/2addr v0, v2

    add-float v2, v0, v9

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRedMarkPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCompassRotation:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 294
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    const/16 v0, 0x168

    if-ge v6, v0, :cond_4

    .line 295
    sparse-switch v6, :sswitch_data_0

    .line 309
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalMarkHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCircleMarkPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 312
    :goto_2
    const/high16 v0, 0x42340000    # 45.0f

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 294
    add-int/lit8 v6, v6, 0x2d

    goto :goto_1

    .line 297
    :sswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalNorth:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->drawArcAndText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_2

    .line 300
    :sswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalEast:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->drawArcAndText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_2

    .line 303
    :sswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalSouth:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->drawArcAndText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_2

    .line 306
    :sswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCardinalWest:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->drawArcAndText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 315
    return-void

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 18
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 195
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getPaddingLeft()I

    move-result v12

    sub-int v12, p1, v12

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getPaddingRight()I

    move-result v13

    sub-int v5, v12, v13

    .line 197
    .local v5, "radarWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getPaddingTop()I

    move-result v12

    sub-int v12, p2, v12

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getPaddingBottom()I

    move-result v13

    sub-int v4, v12, v13

    .line 198
    .local v4, "radarHeight":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v2, v12

    .line 199
    .local v2, "diameter":F
    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v2, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRadius:F

    .line 200
    div-int/lit8 v12, v5, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    .line 201
    div-int/lit8 v12, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    .line 203
    const-string v12, "N"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->calculateTextSize(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v7

    .line 204
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextHeight:I

    .line 205
    move-object/from16 v0, p0

    iget v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mRadius:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextHeight:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mTextPadding:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mArcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    move/from16 v17, v0

    add-float v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    move-object/from16 v0, p0

    iget v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDrawableSize:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v9, v12, v13

    .line 211
    .local v9, "semiSize":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    sub-float/2addr v13, v9

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    sub-float/2addr v14, v9

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    add-float/2addr v15, v9

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    move/from16 v16, v0

    add-float v16, v16, v9

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mStaticUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mStaticUserDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 216
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMovingUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMovingUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v3, v12

    .line 218
    .local v3, "height":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMovingUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v11, v12

    .line 219
    .local v11, "width":F
    const/high16 v6, -0x40800000    # -1.0f

    .line 220
    .local v6, "ratio":F
    const/4 v12, 0x0

    cmpl-float v12, v3, v12

    if-lez v12, :cond_1

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_1

    .line 221
    div-float v6, v11, v3

    .line 223
    :cond_1
    const/4 v12, 0x0

    cmpl-float v12, v6, v12

    if-lez v12, :cond_4

    .line 224
    div-float v8, v9, v6

    .line 225
    .local v8, "semiHeight":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMovingUserDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    sub-float/2addr v13, v9

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    sub-float/2addr v14, v8

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    add-float/2addr v15, v9

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    move/from16 v16, v0

    add-float v16, v16, v8

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    .end local v3    # "height":F
    .end local v6    # "ratio":F
    .end local v8    # "semiHeight":F
    .end local v11    # "width":F
    :cond_2
    :goto_0
    const/high16 v1, 0x41200000    # 10.0f

    .line 233
    .local v1, "bottomPadding":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v12, v1

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v9

    sub-float v10, v12, v13

    .line 234
    .local v10, "verticalOffset":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    sub-float/2addr v13, v9

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    add-float/2addr v14, v10

    sub-float/2addr v14, v9

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    add-float/2addr v15, v9

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    move/from16 v16, v0

    add-float v16, v16, v10

    add-float v16, v16, v9

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    sub-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCenterX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMarkedCircleRadius:F

    move/from16 v16, v0

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mDroneDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    .line 238
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .line 237
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    :cond_3
    return-void

    .line 228
    .end local v1    # "bottomPadding":F
    .end local v10    # "verticalOffset":F
    .restart local v3    # "height":F
    .restart local v6    # "ratio":F
    .restart local v11    # "width":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mMovingUserDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setCompassRotation(FZ)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "draw"    # Z

    .prologue
    .line 343
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCompassRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 344
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mCompassRotation:F

    .line 345
    if-eqz p2, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->invalidate()V

    .line 349
    :cond_0
    return-void
.end method

.method public setShowDrone(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mShowDrone:Z

    if-eq v0, p1, :cond_0

    .line 399
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mShowDrone:Z

    .line 400
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->invalidate()V

    .line 402
    :cond_0
    return-void
.end method

.method public setUserMoving(ZZ)V
    .locals 1
    .param p1, "moving"    # Z
    .param p2, "draw"    # Z

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserMoving:Z

    if-eq v0, p1, :cond_0

    .line 369
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserMoving:Z

    .line 370
    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->invalidate()V

    .line 374
    :cond_0
    return-void
.end method

.method public setUserRotation(FZ)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "draw"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mStaticUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 360
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mUserRotation:F

    .line 361
    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->invalidate()V

    .line 365
    :cond_0
    return-void
.end method

.method public setVisionRotation(FZ)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "draw"    # Z

    .prologue
    .line 385
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 386
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->mVisionRotation:F

    .line 387
    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->invalidate()V

    .line 391
    :cond_0
    return-void
.end method
