.class public Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;
.super Ljava/lang/Object;
.source "Radar2D.java"


# static fields
.field private static final INVERSE_ANGLE:F = 4.712389f

.field private static final RADAR_2GHZ4_ANGLE:I = 0x50

.field private static final RADAR_5GHZ_ANGLE:I = 0x1e

.field private static final RADAR_DISTANCE_CLOSE:F = 5.0f

.field private static final RADAR_DISTANCE_LIMIT:F = 50.0f


# instance fields
.field private final mCalibrateButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRadarContainerView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/parrot/freeflight/piloting/ui/radar/Radar;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I
    .param p3, "radar"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D$1;-><init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    .line 47
    const v0, 0x7f0a02b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarContainerView:Landroid/view/View;

    .line 48
    const v0, 0x7f0a0391

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    .line 49
    const v0, 0x7f0a023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0a00b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mCalibrateButton:Landroid/widget/Button;

    .line 51
    if-nez p3, :cond_0

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :cond_0
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->setDroneType(I)V

    .line 55
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->setRadar(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mCalibrateButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->update()V

    return-void
.end method

.method private update()V
    .locals 22

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarContainerView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->isLocationAvailable()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->isSkyControllerHeadingAvailable()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mCalibrateButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->setRadarEnabled(Z)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getWifiBand()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    move-object/from16 v16, v0

    const/16 v17, 0x1e

    invoke-virtual/range {v16 .. v17}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->setAngle(I)V

    .line 112
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getControllerPosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v3

    .line 113
    .local v3, "controllerPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getDronePosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v9

    .line 114
    .local v9, "dronePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    invoke-virtual {v3, v9}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->distanceTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    .line 115
    .local v15, "relativeDistance":F
    invoke-virtual {v3, v9}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->bearingTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 116
    .local v14, "relativeBearing":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getSkyControllerHeading()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 117
    .local v2, "controllerHeading":F
    invoke-virtual {v9}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->getYaw()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v7, v0

    .line 119
    .local v7, "droneHeading":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->getMeasuredWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v13, v0

    .line 120
    .local v13, "radarRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->getX()F

    move-result v16

    add-float v11, v16, v13

    .line 121
    .local v11, "radarCenterX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->getY()F

    move-result v16

    add-float v12, v16, v13

    .line 122
    .local v12, "radarCenterY":F
    const/high16 v16, 0x40a00000    # 5.0f

    sub-float v16, v15, v16

    const/high16 v17, 0x42340000    # 45.0f

    div-float v4, v16, v17

    .line 123
    .local v4, "distanceRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v8, v13, v16

    .line 128
    .local v8, "droneMaxRadius":F
    const/high16 v16, 0x40a00000    # 5.0f

    cmpg-float v16, v15, v16

    if-gez v16, :cond_2

    .line 129
    const/4 v10, 0x0

    .line 136
    .local v10, "droneRadius":F
    :goto_1
    float-to-double v0, v10

    move-wide/from16 v16, v0

    sub-float v18, v14, v2

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    const-wide v20, 0x4012d97c80000000L    # 4.71238899230957

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    add-float v5, v11, v16

    .line 137
    .local v5, "droneCenterX":F
    float-to-double v0, v10

    move-wide/from16 v16, v0

    sub-float v18, v14, v2

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    const-wide v20, 0x4012d97c80000000L    # 4.71238899230957

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    add-float v6, v12, v16

    .line 139
    .local v6, "droneCenterY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/high16 v17, 0x43b40000    # 360.0f

    sub-float v17, v17, v2

    sub-float v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setRotation(F)V

    .line 141
    const-string v16, "debug_radar"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "droneHeading="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", controllerHeading="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v5, v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setX(F)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setY(F)V

    .line 154
    .end local v2    # "controllerHeading":F
    .end local v3    # "controllerPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .end local v4    # "distanceRatio":F
    .end local v5    # "droneCenterX":F
    .end local v6    # "droneCenterY":F
    .end local v7    # "droneHeading":F
    .end local v8    # "droneMaxRadius":F
    .end local v9    # "dronePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .end local v10    # "droneRadius":F
    .end local v11    # "radarCenterX":F
    .end local v12    # "radarCenterY":F
    .end local v13    # "radarRadius":F
    .end local v14    # "relativeBearing":F
    .end local v15    # "relativeDistance":F
    :cond_0
    :goto_2
    return-void

    .line 109
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    move-object/from16 v16, v0

    const/16 v17, 0x50

    invoke-virtual/range {v16 .. v17}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->setAngle(I)V

    goto/16 :goto_0

    .line 130
    .restart local v2    # "controllerHeading":F
    .restart local v3    # "controllerPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .restart local v4    # "distanceRatio":F
    .restart local v7    # "droneHeading":F
    .restart local v8    # "droneMaxRadius":F
    .restart local v9    # "dronePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .restart local v11    # "radarCenterX":F
    .restart local v12    # "radarCenterY":F
    .restart local v13    # "radarRadius":F
    .restart local v14    # "relativeBearing":F
    .restart local v15    # "relativeDistance":F
    :cond_2
    const/high16 v16, 0x42480000    # 50.0f

    cmpg-float v16, v15, v16

    if-gez v16, :cond_3

    .line 131
    mul-float v10, v8, v4

    .restart local v10    # "droneRadius":F
    goto/16 :goto_1

    .line 133
    .end local v10    # "droneRadius":F
    :cond_3
    move v10, v8

    .restart local v10    # "droneRadius":F
    goto/16 :goto_1

    .line 145
    .end local v2    # "controllerHeading":F
    .end local v3    # "controllerPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .end local v4    # "distanceRatio":F
    .end local v7    # "droneHeading":F
    .end local v8    # "droneMaxRadius":F
    .end local v9    # "dronePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .end local v10    # "droneRadius":F
    .end local v11    # "radarCenterX":F
    .end local v12    # "radarCenterY":F
    .end local v13    # "radarRadius":F
    .end local v14    # "relativeBearing":F
    .end local v15    # "relativeDistance":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->setRadarEnabled(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->isSkyControllerAvailable()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mCalibrateButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->isSkyControllerHeadingAvailable()Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x8

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 150
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mCalibrateButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCalibrateButton()Landroid/widget/Button;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mCalibrateButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getRadarLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarContainerView:Landroid/view/View;

    return-object v0
.end method

.method public setDroneType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    const v1, 0x7f07040e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    const v1, 0x7f070401

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    const v1, 0x7f070406

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mDroneImageView:Landroid/widget/ImageView;

    const v1, 0x7f070403

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRadar(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V
    .locals 2
    .param p1, "radar"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    if-eq p1, v0, :cond_0

    .line 70
    if-nez p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->removeListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .line 77
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->update()V

    .line 79
    :cond_0
    return-void

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->addListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->mRadarContainerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method
