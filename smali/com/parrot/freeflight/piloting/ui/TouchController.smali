.class public Lcom/parrot/freeflight/piloting/ui/TouchController;
.super Landroid/widget/FrameLayout;
.source "TouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;,
        Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;,
        Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;,
        Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;,
        Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;,
        Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;,
        Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;
    }
.end annotation


# static fields
.field private static final LONG_PRESS_DOWN:I = 0xc

.field private static final LONG_PRESS_DOWN_DETECTION_MILLIS:I = 0x3e8

.field private static final LONG_PRESS_UP:I = 0xd

.field private static final LONG_PRESS_UP_DETECTION_MILLIS:I = 0x3e8

.field private static MAX_FINGER_MOVE_FOR_LONG_PRESS:I = 0x0

.field public static final MAX_FINGER_MOVE_FOR_LONG_PRESS_FACTOR:F = 0.05f

.field private static MAX_INTERVAL_BETWEEN_TWO_FINGERS:I = 0x0

.field public static final MAX_INTERVAL_BETWEEN_TWO_FINGERS_FACTOR:F = 0.2f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TIMEOUT_DOUBLETAP:I

.field private final TIMEOUT_FINGERS:I

.field protected customDoubleTapDetector:Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;

.field private firstDownTime:J

.field private intervalBetween2fingers:I

.field private mIsLongPressing:Z

.field private mLongPressAvailable:Z

.field private mLongPressHandler:Landroid/os/Handler;

.field private mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLongPressOriginX:F

.field private mLongPressOriginY:F

.field private oneFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;

.field private oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

.field private pointerCount:I

.field private savedDownMotions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private separateTouches:Z

.field private touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

.field private twoFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;

.field private twoFingerTapCount:B

.field private twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/TouchController;->TAG:Ljava/lang/String;

    .line 25
    const/16 v0, 0xc8

    sput v0, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_INTERVAL_BETWEEN_TWO_FINGERS:I

    .line 26
    const/16 v0, 0x14

    sput v0, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_FINGER_MOVE_FOR_LONG_PRESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/TouchController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/TouchController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->TIMEOUT_DOUBLETAP:I

    .line 48
    const/16 v4, 0x96

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->TIMEOUT_FINGERS:I

    .line 49
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->firstDownTime:J

    .line 50
    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->separateTouches:Z

    .line 51
    iput-byte v7, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTapCount:B

    .line 63
    iput v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginX:F

    .line 64
    iput v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginY:F

    .line 65
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/TouchController$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/TouchController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/TouchController;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    .line 98
    sget-object v4, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_UNKNOW:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    .line 100
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;-><init>(Lcom/parrot/freeflight/piloting/ui/TouchController;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->customDoubleTapDetector:Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;

    .line 101
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 102
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 103
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 104
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 105
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 107
    .local v2, "width":I
    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_INTERVAL_BETWEEN_TWO_FINGERS:I

    .line 108
    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_FINGER_MOVE_FOR_LONG_PRESS:I

    .line 109
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/ui/TouchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TouchController;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mIsLongPressing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/TouchController;)Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TouchController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/piloting/ui/TouchController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TouchController;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginX:F

    return p1
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/piloting/ui/TouchController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TouchController;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginY:F

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/TouchController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TouchController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/TouchController;)Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TouchController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/TouchController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private resetTwoFingersDoubleTab(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 289
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->firstDownTime:J

    .line 290
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->separateTouches:Z

    .line 291
    iput-byte v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTapCount:B

    .line 292
    return-void
.end method

.method private twoFingerDoubleTapDetector(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "doubleTab":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 265
    :sswitch_0
    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->firstDownTime:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->firstDownTime:J

    sub-long/2addr v2, v4

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->TIMEOUT_DOUBLETAP:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 266
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/piloting/ui/TouchController;->resetTwoFingersDoubleTab(J)V

    goto :goto_0

    .line 270
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 271
    iget-byte v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTapCount:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTapCount:B

    goto :goto_0

    .line 273
    :cond_2
    iput-wide v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->firstDownTime:J

    goto :goto_0

    .line 277
    :sswitch_2
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->separateTouches:Z

    if-nez v1, :cond_3

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->separateTouches:Z

    goto :goto_0

    .line 279
    :cond_3
    iget-byte v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTapCount:B

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->firstDownTime:J

    sub-long/2addr v2, v4

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->TIMEOUT_DOUBLETAP:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 280
    const/4 v0, 0x1

    .line 281
    iput-wide v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->firstDownTime:J

    goto :goto_0

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getOneFingerDoubleTabListener()Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;

    return-object v0
.end method

.method public getOneFingerTouchListener()Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    return-object v0
.end method

.method public getTwoFingerDoubleTabListener()Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;

    return-object v0
.end method

.method public getTwoFingerTouchListener()Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 114
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 120
    .local v10, "pointerIndex":I
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 122
    .local v9, "pointerId":I
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->intervalBetween2fingers:I

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->intervalBetween2fingers:I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerDoubleTapDetector(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;

    invoke-interface {v0, p0, p1}, Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;->onTwoFingerDoubleTap(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 227
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 132
    :pswitch_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressAvailable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mIsLongPressing:Z

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 135
    :cond_3
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressAvailable:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginX:F

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginY:F

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->customDoubleTapDetector:Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->touchedDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginX:F

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginY:F

    goto :goto_1

    .line 152
    :pswitch_2
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mIsLongPressing:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;->onTouchUpDuringLongPress()V

    goto :goto_0

    .line 159
    :cond_5
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mIsLongPressing:Z

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->customDoubleTapDetector:Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->touchedUp(Landroid/view/MotionEvent;)V

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    if-eqz v0, :cond_6

    .line 164
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {v12, p0, v9, v0}, Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;->onOneFingerTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    if-eqz v0, :cond_7

    .line 168
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {v12, p0, v0}, Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;->onTwoFingerTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 171
    :cond_7
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 174
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_UNKNOW:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->intervalBetween2fingers:I

    goto/16 :goto_0

    .line 180
    :pswitch_3
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mIsLongPressing:Z

    if-eqz v0, :cond_8

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    if-eqz v0, :cond_1

    if-nez v10, :cond_1

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;->onMovedDuringLongPress(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 185
    :cond_8
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginX:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginY:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_FINGER_MOVE_FOR_LONG_PRESS:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_FINGER_MOVE_FOR_LONG_PRESS:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 189
    :cond_9
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginX:F

    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressOriginY:F

    goto/16 :goto_0

    .line 193
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->intervalBetween2fingers:I

    sget v1, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_INTERVAL_BETWEEN_TWO_FINGERS:I

    if-gt v0, v1, :cond_c

    :cond_b
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_ONE_FINGER:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    if-ne v0, v1, :cond_10

    :cond_c
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_TWO_FINGER:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    if-eq v0, v1, :cond_10

    .line 198
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_e

    .line 199
    const/4 v11, 0x0

    .local v11, "ptIndex":I
    :goto_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v11, v0, :cond_d

    .line 200
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    invoke-virtual {v5, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {v12, p0, v13, v0}, Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;->onOneFingerTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V

    .line 199
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 198
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 204
    .end local v11    # "ptIndex":I
    :cond_e
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_ONE_FINGER:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    .line 212
    .end local v8    # "i":I
    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 205
    :cond_10
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->intervalBetween2fingers:I

    sget v1, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_INTERVAL_BETWEEN_TWO_FINGERS:I

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_ONE_FINGER:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    if-eq v0, v1, :cond_f

    .line 206
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_11

    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->savedDownMotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, p0, v0}, Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;->onTwoFingerTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 206
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 209
    :cond_11
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_TWO_FINGER:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    goto :goto_4

    .line 214
    .end local v8    # "i":I
    :cond_12
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->intervalBetween2fingers:I

    sget v1, Lcom/parrot/freeflight/piloting/ui/TouchController;->MAX_INTERVAL_BETWEEN_TWO_FINGERS:I

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_TWO_FINGER:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    if-ne v0, v1, :cond_13

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;->onTwoFingerTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 216
    :cond_13
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->touchMode:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;->TOUCH_MODE_ONE_FINGER:Lcom/parrot/freeflight/piloting/ui/TouchController$ENUM_TOUCH_MODE;

    if-ne v0, v1, :cond_1

    .line 217
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->pointerCount:I

    if-ge v8, v0, :cond_1

    .line 218
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {v12, p0, v13, v0}, Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;->onOneFingerTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V

    .line 217
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLongPressAvailable(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressAvailable:Z

    .line 252
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressAvailable:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mIsLongPressing:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    :cond_0
    return-void
.end method

.method public setLongPressListener(Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    .line 248
    return-void
.end method

.method public setOneFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;)V
    .locals 0
    .param p1, "oneFingerDoubleTabListener"    # Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;

    .line 236
    return-void
.end method

.method public setOneFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;)V
    .locals 0
    .param p1, "oneFingerTouchListener"    # Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->oneFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;

    .line 300
    return-void
.end method

.method public setTwoFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;)V
    .locals 0
    .param p1, "twoFingerDoubleTabListener"    # Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerDoubleTabListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;

    .line 244
    return-void
.end method

.method public setTwoFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;)V
    .locals 0
    .param p1, "twoFingerTouchListener"    # Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController;->twoFingerTouchListener:Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;

    .line 308
    return-void
.end method
