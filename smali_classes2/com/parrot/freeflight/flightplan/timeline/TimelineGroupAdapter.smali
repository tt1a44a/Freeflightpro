.class public Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;
.super Ljava/lang/Object;
.source "TimelineGroupAdapter.java"


# static fields
.field private static final TILT_ACTION_SIZE:I = 0x3a

.field private static final TILT_DRAW_ANGLE:F = 60.0f

.field private static final TILT_EDGE_SCALE:F = 0.18f

.field private static final TILT_LINE_LENGTH:F = 5.0f

.field private static final TILT_THICKNESS_SCALE:F = 0.035f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTiltIconDrawable(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;)Landroid/graphics/drawable/Drawable;
    .locals 28
    .param p1, "tiltAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getAngle()F

    move-result v14

    .line 62
    .local v14, "angle":F
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getMinAngle()F

    move-result v20

    .line 63
    .local v20, "minAngle":F
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getMaxAngle()F

    move-result v19

    .line 65
    .local v19, "maxAngle":F
    cmpl-float v4, v14, v19

    if-gtz v4, :cond_0

    cmpg-float v4, v14, v20

    if-gez v4, :cond_1

    .line 66
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - BAD ANGLE FOR CAMERA : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_1
    neg-float v14, v14

    .line 70
    const/high16 v18, 0x42680000    # 58.0f

    .line 71
    .local v18, "iconSize":F
    move/from16 v0, v18

    float-to-int v4, v0

    move/from16 v0, v18

    float-to-int v5, v0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 72
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v7, "mPaint":Landroid/graphics/Paint;
    const v4, 0x3d0f5c29    # 0.035f

    mul-float v16, v18, v4

    .line 75
    .local v16, "circleThickness":F
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 77
    const/4 v4, -0x1

    const/16 v5, 0xb4

    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/AlphaColorer;->setColorAlpha(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    const v4, 0x3e3851ec    # 0.18f

    mul-float v17, v18, v4

    .line 80
    .local v17, "edgeDelta":F
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, v18, v17

    sub-float v5, v18, v17

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 81
    .local v3, "oval":Landroid/graphics/RectF;
    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr v4, v14

    neg-float v4, v4

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 83
    const/high16 v4, -0x1000000

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 88
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v17

    sub-float v4, v18, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v21, v4, v16

    .line 89
    .local v21, "radius":F
    float-to-double v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    .line 90
    .local v22, "radians":D
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    float-to-double v4, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    const/high16 v6, 0x40a00000    # 5.0f

    sub-float v6, v21, v6

    float-to-double v0, v6

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v4, v4, v24

    double-to-float v9, v4

    .line 91
    .local v9, "startX":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    float-to-double v4, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    const/high16 v6, 0x40a00000    # 5.0f

    sub-float v6, v21, v6

    float-to-double v0, v6

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    sub-double v4, v4, v24

    double-to-float v10, v4

    .line 92
    .local v10, "startY":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    float-to-double v4, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v4, v4, v24

    double-to-float v11, v4

    .line 93
    .local v11, "stopX":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    float-to-double v4, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    sub-double v4, v4, v24

    double-to-float v12, v4

    .local v12, "stopY":F
    move-object v8, v2

    move-object v13, v7

    .line 94
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method


# virtual methods
.method public getView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;Landroid/view/ViewGroup;)Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
    .locals 3
    .param p1, "timelineAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "convertView"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    if-nez p2, :cond_0

    new-instance p2, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    .end local p2    # "convertView":Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;-><init>(Landroid/content/Context;)V

    .line 33
    .restart local p2    # "convertView":Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
    :cond_0
    instance-of v1, p1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 34
    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    .line 35
    .local v0, "tiltAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;->getTiltIconDrawable(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getValuesString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getMainColor()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->setBackgroundColor(I)V

    .line 45
    .end local v0    # "tiltAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    :goto_0
    return-object p2

    .line 38
    :cond_1
    instance-of v1, p1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    if-eqz v1, :cond_3

    .line 39
    :cond_2
    invoke-virtual {p2, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->refresh(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 40
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getMainColor()I

    move-result v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/AlphaColorer;->setColorAlpha(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p2, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->refresh(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    goto :goto_0
.end method

.method public getView(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;Landroid/view/ViewGroup;)Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;
    .locals 1
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "convertView"    # Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    if-nez p2, :cond_0

    new-instance p2, Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;

    .end local p2    # "convertView":Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;-><init>(Landroid/content/Context;)V

    .line 51
    .restart local p2    # "convertView":Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getColor()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;->setIconColor(I)V

    .line 52
    return-object p2
.end method

.method public refreshActionView(Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 3
    .param p1, "cell"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter$1;->$SwitchMap$com$parrot$freeflight$flightplan$timeline$action$TimelineActionType:[I

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getValuesString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getValuesString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p2

    .line 109
    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    .line 110
    .local v0, "tiltAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;->getTiltIconDrawable(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
