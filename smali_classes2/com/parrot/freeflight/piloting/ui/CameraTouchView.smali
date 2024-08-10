.class public Lcom/parrot/freeflight/piloting/ui/CameraTouchView;
.super Landroid/widget/FrameLayout;
.source "CameraTouchView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;
.implements Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;


# static fields
.field private static final ARDRONE3_VIDEO_HEIGHT:D = 368.0

.field private static final ARDRONE3_VIDEO_WIDTH:D = 640.0

.field private static final TIMEOUT:I


# instance fields
.field private mCameraListener:Lcom/parrot/freeflight/piloting/ui/CameraListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCameraStartTiltAngle:D

.field private mCurrentTouchPositionY:F

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFirstDownTime:J

.field private mHeight:I

.field private mSavedTouchPositionY:F

.field private mSeparateTouches:Z

.field private mTouchStartDeltaYFromCenterOnVid:D

.field private mTouchStartTiltAngleFromCenter:D

.field private mTwoFingerTapCount:B

.field private mVideoToScreenRatio:D

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mSavedTouchPositionY:F

    .line 23
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCurrentTouchPositionY:F

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mFirstDownTime:J

    .line 38
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mSeparateTouches:Z

    .line 39
    iput-byte v2, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTwoFingerTapCount:B

    .line 54
    return-void
.end method

.method private resetDoubleTab(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 165
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mFirstDownTime:J

    .line 166
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mSeparateTouches:Z

    .line 167
    iput-byte v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTwoFingerTapCount:B

    .line 168
    return-void
.end method

.method private twoFingerDoubleTapDetector(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "doubleTab":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 141
    :sswitch_0
    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mFirstDownTime:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mFirstDownTime:J

    sub-long/2addr v2, v4

    sget v1, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->TIMEOUT:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->resetDoubleTab(J)V

    goto :goto_0

    .line 146
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 147
    iget-byte v1, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTwoFingerTapCount:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTwoFingerTapCount:B

    goto :goto_0

    .line 149
    :cond_2
    iput-wide v6, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mFirstDownTime:J

    goto :goto_0

    .line 153
    :sswitch_2
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mSeparateTouches:Z

    if-nez v1, :cond_3

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mSeparateTouches:Z

    goto :goto_0

    .line 155
    :cond_3
    iget-byte v1, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTwoFingerTapCount:B

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mFirstDownTime:J

    sub-long/2addr v2, v4

    sget v1, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->TIMEOUT:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 157
    iput-wide v6, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mFirstDownTime:J

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mWidth:I

    .line 65
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mHeight:I

    .line 69
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mWidth:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mHeight:I

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mWidth:I

    .line 72
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mHeight:I

    .line 74
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    const/high16 v3, 0x44200000    # 640.0f

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 75
    .local v2, "widthRatio":F
    const/high16 v3, 0x43b80000    # 368.0f

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mHeight:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 77
    .local v1, "heightRatio":F
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mVideoToScreenRatio:D

    .line 78
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 83
    const/4 v6, 0x0

    .line 133
    :cond_0
    :goto_0
    return v6

    .line 86
    :cond_1
    const/4 v6, 0x0

    .line 87
    .local v6, "consumed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 88
    .local v15, "pointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 91
    .local v4, "action":I
    invoke-direct/range {p0 .. p1}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->twoFingerDoubleTapDetector(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/core/model/DroneModel;->resetCamera()V

    goto :goto_0

    .line 93
    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v8

    .line 95
    .local v8, "droneCamera":Lcom/parrot/freeflight/piloting/model/DroneCamera;
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 98
    :pswitch_1
    const/4 v6, 0x1

    .line 100
    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getTilt()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    .line 101
    .local v5, "camStartTiltAngleInDeg":F
    float-to-double v0, v5

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCameraStartTiltAngle:D

    .line 103
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v16, v18, v19

    .line 104
    .local v16, "touchYOnScreen":F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mSavedTouchPositionY:F

    .line 105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v7, v16, v18

    .line 106
    .local v7, "deltaYFromCenterOnScreen":F
    float-to-double v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mVideoToScreenRatio:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTouchStartDeltaYFromCenterOnVid:D

    .line 107
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTouchStartDeltaYFromCenterOnVid:D

    move-wide/from16 v18, v0

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getFocalLength()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->atan(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTouchStartTiltAngleFromCenter:D

    goto/16 :goto_0

    .line 110
    .end local v5    # "camStartTiltAngleInDeg":F
    .end local v7    # "deltaYFromCenterOnScreen":F
    .end local v16    # "touchYOnScreen":F
    :pswitch_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCurrentTouchPositionY:F

    goto/16 :goto_0

    .line 113
    :pswitch_3
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCurrentTouchPositionY:F

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCurrentTouchPositionY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mSavedTouchPositionY:F

    move/from16 v19, v0

    sub-float v17, v18, v19

    .line 116
    .local v17, "translationY":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTouchStartDeltaYFromCenterOnVid:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mVideoToScreenRatio:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v9, v18, v19

    .line 117
    .local v9, "moveCurrentTiltPosition":F
    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getFocalLength()F

    move-result v18

    div-float v18, v9, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    .line 119
    .local v10, "moveCurrentTiltAngle":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCameraStartTiltAngle:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mTouchStartTiltAngleFromCenter:D

    move-wide/from16 v20, v0

    sub-double v20, v10, v20

    add-double v12, v18, v20

    .line 120
    .local v12, "newTiltAngle":D
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 121
    .local v14, "newTiltAngleDeg":F
    invoke-virtual {v8, v14}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->ensureTiltRange(F)F

    move-result v14

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/core/model/DroneModel;->tiltCameraAt(F)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCameraListener:Lcom/parrot/freeflight/piloting/ui/CameraListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCameraListener:Lcom/parrot/freeflight/piloting/ui/CameraListener;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getPan()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v14, v1}, Lcom/parrot/freeflight/piloting/ui/CameraListener;->onCameraMove(FF)V

    goto/16 :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTwoFingerDoubleTap(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->resetCamera()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCameraListener:Lcom/parrot/freeflight/piloting/ui/CameraListener;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCameraListener:Lcom/parrot/freeflight/piloting/ui/CameraListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/CameraListener;->onCameraDoubleTap()V

    .line 183
    :cond_1
    return-void
.end method

.method public onTwoFingerTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 173
    return-void
.end method

.method public setCameraListener(Lcom/parrot/freeflight/piloting/ui/CameraListener;)V
    .locals 0
    .param p1, "cameraListener"    # Lcom/parrot/freeflight/piloting/ui/CameraListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 186
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mCameraListener:Lcom/parrot/freeflight/piloting/ui/CameraListener;

    .line 187
    return-void
.end method

.method public update(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 58
    return-void
.end method
