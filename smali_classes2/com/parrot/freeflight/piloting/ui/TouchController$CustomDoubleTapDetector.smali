.class Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;
.super Ljava/lang/Object;
.source "TouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/TouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDoubleTapDetector"
.end annotation


# instance fields
.field private firstDown:Landroid/view/MotionEvent;

.field private firstUp:Landroid/view/MotionEvent;

.field private secondDown:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

.field private viewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/ui/TouchController;)V
    .locals 1

    .prologue
    .line 320
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->viewConfig:Landroid/view/ViewConfiguration;

    .line 322
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->secondDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstUp:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    .line 390
    return-void
.end method


# virtual methods
.method public touchedDown(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 326
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    if-nez v4, :cond_0

    .line 327
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    .line 348
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstUp:Landroid/view/MotionEvent;

    if-eqz v4, :cond_2

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstUp:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstUp:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 333
    .local v0, "distanceWithFirstUp":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstUp:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 335
    .local v2, "timeInterval":J
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->viewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v4

    int-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 336
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->secondDown:Landroid/view/MotionEvent;

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->reset()V

    .line 339
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    goto :goto_0

    .line 345
    .end local v0    # "distanceWithFirstUp":D
    .end local v2    # "timeInterval":J
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->reset()V

    .line 346
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    goto :goto_0
.end method

.method public touchedUp(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 351
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    if-nez v6, :cond_0

    .line 386
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstUp:Landroid/view/MotionEvent;

    if-nez v6, :cond_2

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 358
    .local v0, "distanceWithFirstDown":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstDown:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 360
    .local v4, "timeInterval":J
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->viewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v0, v6

    if-gez v6, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 361
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->firstUp:Landroid/view/MotionEvent;

    goto :goto_0

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->reset()V

    goto :goto_0

    .line 368
    .end local v0    # "distanceWithFirstDown":D
    .end local v4    # "timeInterval":J
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->secondDown:Landroid/view/MotionEvent;

    if-eqz v6, :cond_4

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->secondDown:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->secondDown:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 370
    .local v2, "distanceWithSecondDown":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->secondDown:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 372
    .restart local v4    # "timeInterval":J
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->viewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v2, v6

    if-gez v6, :cond_3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    .line 373
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-static {v6}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$400(Lcom/parrot/freeflight/piloting/ui/TouchController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 374
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-static {v6}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$500(Lcom/parrot/freeflight/piloting/ui/TouchController;)Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 375
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/TouchController;->getOneFingerDoubleTabListener()Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-interface {v6, v7, p1}, Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;->onOneFingerDoubleTap(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 378
    :cond_3
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->reset()V

    goto/16 :goto_0

    .line 383
    .end local v2    # "distanceWithSecondDown":D
    .end local v4    # "timeInterval":J
    :cond_4
    invoke-static {}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Custom double tap detector error : state unknown"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/TouchController$CustomDoubleTapDetector;->reset()V

    goto/16 :goto_0
.end method
